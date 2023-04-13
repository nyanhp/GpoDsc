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

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -Type $this)
        $setParam['Server'] = Get-NextClosestDomainController @param
    
        Import-GPO @setParam
    }
}
