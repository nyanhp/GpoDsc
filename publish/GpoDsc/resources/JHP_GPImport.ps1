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
