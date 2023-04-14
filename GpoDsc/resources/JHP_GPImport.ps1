[DscResource()]
class GPImport
{
    # Name or GUID
    [DscProperty(Key)] [string] $BackupGpo
    # Name or GUID
    [DscProperty(Mandatory)] [string] $TargetGpo
    [DscProperty(Mandatory)] [string] $Path
    [DscProperty()] [string] $MigrationTable
    [DscProperty()] [string] $DomainName
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons

    [GPImport] Get()
    {
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

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $getParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $getParam['Server'] = Get-NextClosestDomainController @param

        $reasonList = @()
        $currentGpo = Get-GPO @getParam
        if ($currentGpo)
        {            
            Write-PSFMessage -String Verbose.GPImport.SkipExistingGpo -StringValues $currentGpo.DisplayName, $currentGpo.Id -Module GpoDsc
        }
        else
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'GpoDoesNotExist'
                Phrase = (Get-PSFLocalizedString -Name Error.GPImport.GpoDoesNotExist -Module GpoDsc) -f $this.TargetGpo, $this.BackupGpo
            }
        }

        if (-not [string]::IsNullOrWhiteSpace($this.MigrationTable) -and -not (Test-Path -Path $this.MigrationTable))
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'MigrationTableDoesNotExist'
                Phrase = (Get-PSFLocalizedString -Name Error.GPImport.MigrationTableDoesNotExist -Module GpoDsc) -f $this.MigrationTable
            }
        }

        if (-not [string]::IsNullOrWhiteSpace($this.Path) -and -not (Test-Path -Path $this.Path))
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'ExportDoesNotExist'
                Phrase = (Get-PSFLocalizedString -Name Error.GPImport.ExportDoesNotExist -Module GpoDsc) -f $this.Path
            }
        }

        return @{
            BackupGpo      = $this.BackupGpo
            TargetGpo      = $currentGpo.DisplayName
            Path           = $this.Path
            MigrationTable = ($this.MigrationTable | Resolve-Path -ErrorAction SilentlyContinue).Path
            DomainName     = $this.DomainName
            Reasons        = $reasonList
        }
    }

    [bool] Test()
    {
        $currentStatus = $this.Get()
        return (-not [string]::IsNullOrEmpty($currentStatus.TargetGpo))
    }

    [void] Set()
    {
        $setParam = @{
            CreateIfNeeded = $true
            Path           = $this.Path
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

        if (-not [string]::IsNullOrWhiteSpace($this.MigrationTable) -and -not (Test-Path -Path $this.MigrationTable))
        {
            Write-PSFMessage -Module GpoDsc -Level Error -String 'Error.GPImport.MigrationTableDoesNotExist' -StringValues $this.MigrationTable
            return
        }

        if (-not [string]::IsNullOrWhiteSpace($this.MigrationTable))
        {
            $setParam['MigrationTable'] = $this.MigrationTable
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $setParam['Server'] = Get-NextClosestDomainController @param
    
        Import-GPO @setParam
    }
}
