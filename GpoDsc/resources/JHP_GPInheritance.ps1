[DscResource()]
class GPInheritance
{
    # Distinguished Name of target OrgUnit
    [DscProperty(Key)] [string] $TargetOrganizationalUnitDn
    # Name or GUID
    [DscProperty(Mandatory)] [GpoBlock] $BlockedFromInheritance
    [DscProperty()] [string] $DomainName
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons

    [GPInheritance] Get()
    {
        Write-PSFMessage -String Verbose.GetCurrentSettings

        $getParam = @{
            ErrorAction = 'SilentlyContinue'
            Target      = $this.TargetOrganizationalUnitDn
            IsBlocked   = $this.BlockedFromInheritance
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $getParam['Domain'] = $this.DomainName
        }

        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $getParam['Server'] = Get-NextClosestDomainController @param

        $currentInheritance = Get-GPInheritance @getParam

        $reasonList = @()
        if (($currentInheritance.GpoInheritanceBlocked -and $this.BlockedFromInheritance -eq 'No') -or (-not $currentInheritance.GpoInheritanceBlocked -and $this.BlockedFromInheritance -eq 'Yes'))
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode) -f $($this.GetType().FullName), 'SettingMismatch'
                Phrase = (Get-PSFLocalizedString -Name Error.GPInheritance.SettingMismatch) -f $this.BlockedFromInheritance, $currentInheritance.GpoInheritanceBlocked
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
        return $currentStatus.Reasons.Count -ne 0
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

        
    }
}
