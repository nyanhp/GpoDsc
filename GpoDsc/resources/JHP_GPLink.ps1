[DscResource()]
class GPLink
{
    # Distinguished Name of target OrgUnit
    [DscProperty(Key)] [string] $TargetOrganizationalUnitDn
    # Name or GUID
    [DscProperty(Key)] [string] $TargetGpo
    [DscProperty(Mandatory)] [uint32] $Order
    [DscProperty()] [GpoYesNo] $LinkEnabled
    [DscProperty()] [GpoYesNo] $Enforced
    [DscProperty()] [string] $DomainName
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons

    [GPLink] Get()
    {
        Test-GpoPrerequisites
        $getParam = @{
            ErrorAction = 'Stop'
            Target      = $this.TargetOrganizationalUnitDn
        }

        $isTargetGuid = $this.TargetGpo -as [guid]

        $getGpoParam = @{
            ErrorAction = 'SilentlyContinue'
        }
        if ($isTargetGuid)
        {
            $getGpoParam['Guid'] = $isTargetGuid.Guid
        }
        else
        {
            $getGpoParam['Name'] = $this.TargetGpo
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $getGpoParam['Domain'] = $this.DomainName
            $getParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $getParam['Server'] = Get-NextClosestDomainController @param
        $getGpoParam['Server'] = $getParam['Server']

        $gpo = Get-GPO @getGpoParam
        $reasonList = @()

        if (-not $gpo)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'NoGpo'
                Phrase = (Get-PSFLocalizedString -Name Error.GPLink.NoGpo -Module GpoDsc) -f $this.TargetGpo, $getGpoParam['Server']
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

        $currentInheritance = try { Get-GPInheritance @getParam } catch {} # Suppress errors, the cmdlet ignores ErrorAction SilentlyContinue

        $link = $currentInheritance.GpoLinks | Where-Object -Property DisplayName -eq $gpo.DisplayName
        if (-not $link)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'LinkMissing'
                Phrase = (Get-PSFLocalizedString -Name Error.GPLink.LinkMissing -Module GpoDsc) -f $this.TargetGpo, $this.TargetOrganizationalUnitDn
            }
        }

        if ($link -and $link.Order -ne $this.Order)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'WrongLinkOrder'
                Phrase = (Get-PSFLocalizedString -Name Error.GPLink.WrongLinkOrder -Module GpoDsc) -f $this.TargetGpo, $this.TargetOrganizationalUnitDn, $link.Order, $this.Order
            }
        }

        # Why, oh why, should the output match the parameter value...
        $isEnforced = if ($link -and $link.Enforced) { 'Yes' } else { 'No' }
        $isEnabled = if ($link -and $link.Enabled) { 'Yes' } else { 'No' }

        if ($isEnforced)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'WrongEnforcement'
                Phrase = (Get-PSFLocalizedString -Name Error.GPLink.WrongEnforcement -Module GpoDsc) -f $this.TargetGpo, $this.TargetOrganizationalUnitDn, $isEnforced, $this.Enforced
            }
        }

        if ($isEnabled) # Why, oh why, should the output match the parameter value...
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'WrongEnable'
                Phrase = (Get-PSFLocalizedString -Name Error.GPLink.WrongEnable -Module GpoDsc) -f $this.TargetGpo, $this.TargetOrganizationalUnitDn, $isEnabled, $this.Enforced
            }
        }

        return @{
            TargetOrganizationalUnitDn = $this.TargetOrganizationalUnitDn
            TargetGpo                  = $gpo.DisplayName
            LinkEnabled                = $isEnabled
            Enforced                   = $isEnforced
            Order                      = $link.Order
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
        $setParam = @{
            Target      = $this.TargetOrganizationalUnitDn
            LinkEnabled = $this.Enabled
            Order       = $this.Order
            Enforced    = $this.Enforced
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $setParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $setParam['Server'] = Get-NextClosestDomainController @param

        Write-PSFMessage -Function Set -ModuleName GpoDsc -String Verbose.GPLink.SettingGPLink -StringValues $this.TargetGpo, $this.TargetOrganizationalUnitDn, $this.Order, $this.Enforced, $this.LinkEnabled, $setParam['Server']
        Set-GPLink @setParam
    }
}
