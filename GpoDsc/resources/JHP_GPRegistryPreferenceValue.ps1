[DscResource()]
class GPRegistryPreferenceValue
{
    # Name or GUID
    [DscProperty(Key)] [string] $Gpo
    # Key name
    [DscProperty(Key)] [string] $Key
    [DscProperty()] [string] $ValueName
    [DscProperty()] [string[]] $Value
    [DscProperty()] [uint32] $Order
    [DscProperty()] [bool] $Disable
    [DscProperty()] [string] $ValuePrefix
    [DscProperty()] [GpoType] $Type
    [DscProperty()] [GpoEnsure] $Ensure
    [DscProperty()] [string] $DomainName
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons
    [DscProperty(NotConfigurable)] [string] $PolicyState

    [GPRegistryPreferenceValue] Get()
    {
        Test-GpoPrerequisites
        $getParam = @{
            ErrorAction = 'Stop'
            Target      = $this.TargetOrganizationalUnitDn
        }

        $isTargetGuid = $this.Gpo -as [guid]

        $getGpoParam = @{
            ErrorAction = 'SilentlyContinue'
        }
        if ($isTargetGuid)
        {
            $getGpoParam['Guid'] = $isTargetGuid.Guid
        }
        else
        {
            $getGpoParam['Name'] = $this.Gpo
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $getGpoParam['Domain'] = $this.DomainName
            $getParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $getParam['Server'] = Get-NextClosestDomainController @param
        $getGpoParam['Server'] = $getParam['Server']

        $foundGpo = Get-GPO @getGpoParam
        $reasonList = @()

        if (-not $foundGpo)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'NoGpo'
                Phrase = (Get-PSFLocalizedString -Name Error.Generic.GpoMissing -Module GpoDsc) -f $this.Gpo, $getGpoParam['Server']
            }
        }

        $orgUnit = try { Get-ADOrganizationalUnit -Identity $this.TargetOrganizationalUnitDn -Server $getParam['Server'] -ErrorAction Stop } catch { } # Suppress errors, the cmdlet ignores ErrorAction SilentlyContinue
       
        if (-not $orgUnit)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'OrgUnitMissing'
                Phrase = (Get-PSFLocalizedString -Name Error.Generic.OrgUnitMissing -Module GpoDsc) -f $this.GetType().FullName, $this.TargetOrganizationalUnitDn, $getParam['Server']
            }
        }

        return @{
            TargetOrganizationalUnitDn = $this.TargetOrganizationalUnitDn
            Gpo                        = $foundGpo.DisplayName
            LinkEnabled                = ''
            Enforced                   = ''
            Order                      = ''
            DomainName                 = $this.DomainName
            Reasons                    = $reasonList
        }
    }

    [bool] Test()
    {
        Test-GpoPrerequisites
        $currentStatus = $this.Get()
        return $currentStatus.Reasons.Count -eq 0
    }

    [void] Set()
    {
        Test-GpoPrerequisites
        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $setParam = Sync-Parameter -Command (Get-Command -Name Set-GPPrefRegistryValue) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $setParam['Server'] = Get-NextClosestDomainController @param
        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $setParam['Domain'] = $this.DomainName
        }

        Write-PSFMessage -Function Set -ModuleName GpoDsc -String Verbose.GPRegistryValue.SettingGPRegistryValue -StringValues $this.Gpo, $this.TargetOrganizationalUnitDn, $this.Order, $this.Enforced, $this.LinkEnabled, $setParam['Server']
        Set-GPPrefRegistryValue @setParam
    }
}
