<#
    .SYNOPSIS
        Generates a file contaning function stubs of all cmdlets from the module given as a parameter.

        Adapted to cope with the weird ActiveDirectory module

    .PARAMETER ModuleName
        The name of the module to load and generate stubs from. This module must exist on the computer where this function is run.

    .PARAMETER Path
         Path to where to write the stubs file. The filename will be generated from the module name. The default path is the working directory.

    .EXAMPLE
        Write-ModuleStubFile -ModuleName OperationsManager

    .EXAMPLE
        Write-ModuleStubFile -ModuleName SqlServer -Path C:\Source
#>
function Write-ModuleStubFile
{
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $ModuleName,

        [Parameter()]
        [System.IO.DirectoryInfo]
        $Path = ( Get-Location ).Path
    )

    # Import the supplied module
    Import-Module -Name $ModuleName -DisableNameChecking -Force -ErrorAction Stop

    # Get the module object
    $module = Get-Module -Name $ModuleName

    # Define the output file name
    $outFile = Join-Path -Path $Path -ChildPath "$($module.Name )_$($module.Version)_Stubs.psm1"

    # Verify the output file doesn't already exist
    if ( Test-Path -Path $outFile )
    {
        throw "The file '$outFile' already exists."
    }

    # Define the length of the indent
    $indent = ' ' * 4

    # Define the header of the file
    $moduleStringBuilder= New-Object -TypeName System.Text.StringBuilder
    $null = $moduleStringBuilder.AppendLine('<#')
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.AppendLine('.SYNOPSIS')
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.AppendLine("Cmdlet stubs for the module $($module.Name).")
    $null = $moduleStringBuilder.AppendLine()
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.AppendLine('.DESCRIPTION')
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.AppendLine("This module contains the stubs for the cmdlets in the module $($module.Name) version $($module.Version.ToString()).")
    $null = $moduleStringBuilder.AppendLine()
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.AppendLine('.NOTES')
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.Append($indent)
    $null = $moduleStringBuilder.AppendLine("The stubs in this module were generated from the $($MyInvocation.MyCommand) function which is distributed as part of the SqlServerDsc module.")
    $null = $moduleStringBuilder.AppendLine('#>')
    $null = $moduleStringBuilder.AppendLine()
    $null = $moduleStringBuilder.AppendLine('# Suppressing this rule because these functions are from an external module and are only being used as stubs')
    $null = $moduleStringBuilder.AppendLine('[System.Diagnostics.CodeAnalysis.SuppressMessageAttribute(''PSAvoidUsingUserNameAndPassWordParams'', '''')]')
    $null = $moduleStringBuilder.AppendLine('param()')
    $moduleStringBuilder.ToString() | Out-File -FilePath $outFile -Encoding utf8 -Append


    # Get the cmdlets in the module
    $cmdlets = Get-Command -Module $ModuleName -CommandType Cmdlet

    foreach ( $cmdlet in $cmdlets )
    {
        # Clear the alias variable to ensure unnecessary aliases are not created
        Remove-Variable -Name alias -ErrorAction SilentlyContinue

        # Create a string builder object to build the functions

        # Reset the end of definition variable
        $endOfDefinition = $false

        # Get the Cmdlet metadata
        $metadata = New-Object -TypeName System.Management.Automation.CommandMetaData -ArgumentList $cmdlet

        # Get the definition of the cmdlet
        $definition = [System.Management.Automation.ProxyCommand]::Create($metadata)

        # Define the beginning of the function
        $null = $moduleStringBuilder.AppendLine("function $($cmdlet.Name)")
        $null = $moduleStringBuilder.AppendLine('{')


        # Iterate over each line in the cmdlet
        $null = $moduleStringBuilder.AppendLine('[CmdletBinding()]')
        $null = $moduleStringBuilder.AppendLine('param')
        $null = $moduleStringBuilder.AppendLine('(')
        $pCount = $cmdlet.Parameters.Count
        $count = 0
        $null = foreach ($para in $cmdlet.Parameters.GetEnumerator())
        {
            $count++
            if ($para.Value.Name -in 'ErrorAction','ErrorVariable','WarningAction','WarningVariable','Verbose','Debug','InformationAction','InformationVariable','OutVariable','OutBuffer','PipelineVariable','WhatIf','Confirm') { continue }
            $close = if ($count -eq $pCount) { '' } else {','}
            $lin = '[{0}] ${1}{2}' -f $para.Value.ParameterType.FullName, $para.Value.Name, $close
            $null = $moduleStringBuilder.AppendLine($lin)
            $null = $moduleStringBuilder.AppendLine()
        }
        $null = $moduleStringBuilder.AppendLine(')')

        # Build the body of the function
        $null = $moduleStringBuilder.AppendLine()
        $null = $moduleStringBuilder.Append($indent)
        $null = $moduleStringBuilder.AppendLine('throw ''{0}: StubNotImplemented'' -f $MyInvocation.MyCommand')
        $null = $moduleStringBuilder.AppendLine('}')
        $null = $moduleStringBuilder.AppendLine()

        # Find any aliases which may exist for the cmdlet
        $alias = Get-Alias -Definition $cmdlet.Name -ErrorAction SilentlyContinue

        # If any aliases exist
        if ( $alias )
        {
            # Create an alias in the stubs
            $null = $moduleStringBuilder.Append("New-Alias -Name $($alias.DisplayName) -Value $($alias.Definition)")
            $null = $moduleStringBuilder.AppendLine()
        }
    }

    # Export the function text to the file
    $moduleStringBuilder.ToString() | Set-Content $outFile -Encoding utf8
}