[DscResource()]
class GPInheritance
{
    # Distinguished Name of target OrgUnit
    [DscProperty(Key)] [string] $TargetOrganizationalUnitDn
    # Name or GUID
    [DscProperty(Mandatory)] [GpoYesNo] $BlockedFromInheritance
    [DscProperty()] [string] $DomainName
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons

    [GPInheritance] Get()
    {
        $getParam = @{
            ErrorAction = 'Stop'
            Target      = $this.TargetOrganizationalUnitDn
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $getParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $getParam['Server'] = Get-NextClosestDomainController @param

        $orgUnit = try { Get-ADOrganizationalUnit -Identity $this.TargetOrganizationalUnitDn -Server $getParam['Server'] -ErrorAction Stop } catch { } # Suppress errors, the cmdlet ignores ErrorAction SilentlyContinue
        $currentInheritance = try { Get-GPInheritance @getParam } catch { } # Suppress errors, the cmdlet ignores ErrorAction SilentlyContinue

        $reasonList = @()
        if (-not $orgUnit)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'OrgUnitMissing'
                Phrase = (Get-PSFLocalizedString -Name Error.Generic.OrgUnitMissing -Module GpoDsc) -f $this.GetType().FullName, $this.TargetOrganizationalUnitDn, $getParam['Server']
            }
        }

        if (($currentInheritance.GpoInheritanceBlocked -and $this.BlockedFromInheritance -eq 'No') -or (-not $currentInheritance.GpoInheritanceBlocked -and $this.BlockedFromInheritance -eq 'Yes'))
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'SettingMismatch'
                Phrase = (Get-PSFLocalizedString -Name Error.GPInheritance.SettingMismatch -Module GpoDsc) -f $this.BlockedFromInheritance, $currentInheritance.GpoInheritanceBlocked
            }
        }

        return @{
            TargetOrganizationalUnitDn = $this.TargetOrganizationalUnitDn
            BlockedFromInheritance     = if ($currentInheritance.GpoInheritanceBlocked) { 'Yes' } else { 'No' }
            DomainName                 = $this.DomainName
            Reasons                    = $reasonList
        }
    }

    [bool] Test()
    {
        $currentStatus = $this.Get()
        return $currentStatus.Reasons.Count -eq 0
    }

    [void] Set()
    {        
        $setParam = @{
            Target    = $this.TargetOrganizationalUnitDn
            IsBlocked = $this.BlockedFromInheritance
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $setParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $setParam['Server'] = Get-NextClosestDomainController @param

        Set-GPInheritance @setParam
    }
}
