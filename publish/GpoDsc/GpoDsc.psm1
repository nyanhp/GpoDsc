$script:ModuleRoot = $PSScriptRoot
$script:ModuleVersion = (Import-PowerShellDataFile -Path "$($script:ModuleRoot)\GpoDsc.psd1").ModuleVersion

# Detect whether at some level dotsourcing was enforced
$script:doDotSource = Get-PSFConfigValue -FullName GpoDsc.Import.DoDotSource -Fallback $false
if ($GpoDsc_dotsourcemodule) { $script:doDotSource = $true }

<#
Note on Resolve-Path:
All paths are sent through Resolve-Path/Resolve-PSFPath in order to convert them to the correct path separator.
This allows ignoring path separators throughout the import sequence, which could otherwise cause trouble depending on OS.
Resolve-Path can only be used for paths that already exist, Resolve-PSFPath can accept that the last leaf my not exist.
This is important when testing for paths.
#>

# Detect whether at some level loading individual module files, rather than the compiled module was enforced
$importIndividualFiles = Get-PSFConfigValue -FullName GpoDsc.Import.IndividualFiles -Fallback $false
if ($GpoDsc_importIndividualFiles) { $importIndividualFiles = $true }
if (Test-Path (Resolve-PSFPath -Path "$($script:ModuleRoot)\..\.git" -SingleItem -NewChild)) { $importIndividualFiles = $true }
if ("<was compiled>" -eq '<was not compiled>') { $importIndividualFiles = $true }
	
function Import-ModuleFile
{
	<#
		.SYNOPSIS
			Loads files into the module on module import.
		
		.DESCRIPTION
			This helper function is used during module initialization.
			It should always be dotsourced itself, in order to proper function.
			
			This provides a central location to react to files being imported, if later desired
		
		.PARAMETER Path
			The path to the file to load
		
		.EXAMPLE
			PS C:\> . Import-ModuleFile -File $function.FullName
	
			Imports the file stored in $function according to import policy
	#>
	[CmdletBinding()]
	Param (
		[string]
		$Path
	)
	
	$resolvedPath = $ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($Path).ProviderPath
	if ($doDotSource) { . $resolvedPath }
	else { $ExecutionContext.InvokeCommand.InvokeScript($false, ([scriptblock]::Create([io.file]::ReadAllText($resolvedPath))), $null, $null) }
}

#region Load individual files
if ($importIndividualFiles)
{
	# Execute Preimport actions
	foreach ($path in (& "$ModuleRoot\internal\scripts\preimport.ps1")) {
		. Import-ModuleFile -Path $path
	}
	
	# Import all internal functions
	foreach ($function in (Get-ChildItem "$ModuleRoot\internal\functions" -Filter "*.ps1" -Recurse -ErrorAction Ignore))
	{
		. Import-ModuleFile -Path $function.FullName
	}
	
	# Import all public functions
	foreach ($function in (Get-ChildItem "$ModuleRoot\functions" -Filter "*.ps1" -Recurse -ErrorAction Ignore))
	{
		. Import-ModuleFile -Path $function.FullName
	}
	
	# Execute Postimport actions
	foreach ($path in (& "$ModuleRoot\internal\scripts\postimport.ps1")) {
		. Import-ModuleFile -Path $path
	}
	
	# End it here, do not load compiled code below
	return
}
#endregion Load individual files

#region Load compiled code
enum GpoEnsure
{
    Absent
    Present
}

class GpoReason
{
    [DscProperty()]
    [System.String]
    $Code

    [DscProperty()]
    [System.String]
    $Phrase
}



<#
This file loads the strings documents from the respective language folders.
This allows localizing messages and errors.
Load psd1 language files for each language you wish to support.
Partial translations are acceptable - when missing a current language message,
it will fallback to English or another available language.
#>
Import-PSFLocalizedString -Path "$($script:ModuleRoot)\en-us\*.psd1" -Module 'GpoDsc' -Language 'en-US'

<#
This is an example configuration file

By default, it is enough to have a single one of them,
however if you have enough configuration settings to justify having multiple copies of it,
feel totally free to split them into multiple files.
#>

<#
# Example Configuration
Set-PSFConfig -Module 'GpoDsc' -Name 'Example.Setting' -Value 10 -Initialize -Validation 'integer' -Handler { } -Description "Example configuration setting. Your module can then use the setting using 'Get-PSFConfigValue'"
#>

Set-PSFConfig -Module 'GpoDsc' -Name 'Import.DoDotSource' -Value $false -Initialize -Validation 'bool' -Description "Whether the module files should be dotsourced on import. By default, the files of this module are read as string value and invoked, which is faster but worse on debugging."
Set-PSFConfig -Module 'GpoDsc' -Name 'Import.IndividualFiles' -Value $false -Initialize -Validation 'bool' -Description "Whether the module files should be imported individually. During the module build, all module code is compiled into few files, which are imported instead by default. Loading the compiled versions is faster, using the individual files is easier for debugging and testing out adjustments."

function Get-NextClosestDomainController
{
    [CmdletBinding()]
    param
    (
        [string]
        $DomainName
    )

    $parameters = @{
        Discover        = $true
        Writable        = $true
        NextClosestSite = $true
        ErrorAction     = 'Stop'
    }

    if (-not [string]::IsNullOrWhiteSpace($DomainName))
    {
        $parameters['DomainName'] = $DomainName
    }

    Write-PSFMessage -String Verbose.GetClosestDc -StringValues $DomainName
    Get-ADDomainController $parameters
}


[DscResource()]
class GPImport
{
    # Name or GUID
    [DscProperty(Key)] [string] $BackupGpo
    # Name or GUID
    [DscProperty(Key)] [string] $TargetGpo
    [DscProperty()] [string] $MigrationTable
    [DscProperty()] [string] $DomainName
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons

    [GPImport] Get()
    {
        Write-PSFMessage -String Verbose.GPImport.GetCurrentSettings

        $isGuid = $this.TargetGpo -as [guid]
        $getParam = @{
            ErrorAction = 'SilentlyContinue'
        }

        if ($isGuid)
        {
            $getParam['Guid'] = $isGuid.Guid
        }
        else
        {
            $getParam['Name'] = $this.TargetGpo
        }

        if (-not [string]::IsNullOrWhiteSpace($this.Domain))
        {
            $getParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters $this.GetConfigurableDscProperties()
        $getParam['Server'] = Get-NextClosestDomainController @param

        $currentGpo = Get-GPO @getParam
        if ($currentGpo)
        {            
            Write-PSFMessage -String Verbose.GPImport.SkipExistingGpo -StringValues $currentGpo.DisplayName, $currentGpo.Id
        }

        return @{
            BackupGpo      = $this.BackupGpo
            TargetGpo      = $currentGpo.DisplayName
            MigrationTable = $this.MigrationTable
            DomainName     = $this.DomainName
            Reasons        = @()
        }
    }

    [bool] Test()
    {
        $currentStatus = $this.Get()
        return (-not [string]::IsNullOrEmpty($currentStatus.TargetGpo))
    }

    [void] Set()
    {

        $parameters = $this.GetConfigurableDscProperties()

        $setParam = @{
            CreateIfNeeded = $true
        }
        $isTargetGuid = $this.TargetGpo -as [guid]
        $isSourceGuid = $this.BackupGpo -as [guid]

        if ($isTargetGuid)
        {
            $setParam['TargetGuid'] = $isTargetGuid.Guid
        }
        else
        {
            $setParam['TargetName'] = $this.TargetGpo
        }

        if ($isSourceGuid)
        {
            $setParam['BackupId'] = $isSourceGuid.Guid
        }
        else
        {
            $setParam['BackupGpoName'] = $this.BackupGpo
        }

        if (-not [string]::IsNullOrWhiteSpace($this.Domain))
        {
            $setParam['Domain'] = $this.DomainName
        }

        if (-not [string]::IsNullOrWhiteSpace($this.MigrationTable))
        {
            $setParam['MigrationTable'] = $this.MigrationTable
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters $this.GetConfigurableDscProperties()
        $setParam['Server'] = Get-NextClosestDomainController @param
    
        Import-GPO @setParam
    }

    [Hashtable] GetConfigurableDscProperties()
    {
        # This method returns a hashtable of properties with two special workarounds
        # The hashtable will not include any properties marked as "NotConfigurable"
        # Any properties with a ValidateSet of "True","False" will beconverted to Boolean type
        # The intent is to simplify splatting to functions
        # Source: https://gist.github.com/mgreenegit/e3a9b4e136fc2d510cf87e20390daa44
        $DscProperties = @{}
        foreach ($property in [GPImport].GetProperties().Name)
        {
            # Checks if "NotConfigurable" attribute is set
            $notConfigurable = [GPImport].GetProperty($property).GetCustomAttributes($false).Where({ $_ -is [System.Management.Automation.DscPropertyAttribute] }).NotConfigurable
            if (!$notConfigurable)
            {
                $value = $this.$property
                # Gets the list of valid values from the ValidateSet attribute
                $validateSet = [GPImport].GetProperty($property).GetCustomAttributes($false).Where({ $_ -is [System.Management.Automation.ValidateSetAttribute] }).ValidValues
                if ($validateSet)
                {
                    # Workaround for boolean types
                    if ($null -eq (Compare-Object @('True', 'False') $validateSet))
                    {
                        $value = [System.Convert]::ToBoolean($this.$property)
                    }
                }
                # Add property to new
                $DscProperties.add($property, $value)
            } 
        }
        return $DscProperties
    }
}












<#
Stored scriptblocks are available in [PsfValidateScript()] attributes.
This makes it easier to centrally provide the same scriptblock multiple times,
without having to maintain it in separate locations.

It also prevents lengthy validation scriptblocks from making your parameter block
hard to read.

Set-PSFScriptblock -Name 'GpoDsc.ScriptBlockName' -Scriptblock {
	
}
#>

<#
# Example:
Register-PSFTeppArgumentCompleter -Command Get-Alcohol -Parameter Type -Name GpoDsc.alcohol
#>

New-PSFLicense -Product 'GpoDsc' -Manufacturer 'japete' -ProductVersion $script:ModuleVersion -ProductType Module -Name MIT -Version "1.0.0.0" -Date (Get-Date "2023-04-13") -Text @"
Copyright (c) 2023 japete

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"@
#endregion Load compiled code