[DscResource()]
class GPRegistryValue
{
    # Name or GUID
    [DscProperty(Key)] [string] $Gpo
    # Key name
    [DscProperty(Key)] [string] $Key
    [DscProperty()] [string] $ValueName
    [DscProperty()] [string[]] $Value
    [DscProperty()] [bool] $Additive
    [DscProperty()] [bool] $Disable
    [DscProperty()] [string] $ValuePrefix
    [DscProperty()] [GpoType] $Type
    [DscProperty()] [GpoEnsure] $Ensure
    [DscProperty()] [string] $DomainName
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons
    [DscProperty(NotConfigurable)] [string] $PolicyState

    GPRegistryValue ()
    {
        $this.Type = 'Unknown'
        $this.Ensure = 'Present'
    }

    [GPRegistryValue] Get()
    {
        $getParam = @{
            ErrorAction = 'Stop'
            Target      = $this.TargetOrganizationalUnitDn
        }

        $isTargetGuid = $this.Gpo -as [guid]
        $reasonList = @()

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

        # You cannot specify the Additive, Type, Value, or ValuePrefix parameters with the Disable parameter.
        if ($this.Disable -and ($this.Additive -or $this.Type -or $this.Value -or $this.ValuePrefix))
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'InvalidParameters'
                Phrase = (Get-PSFLocalizedString -Name Error.GPRegistryValue.InvalidParameters -Module GpoDsc) -f $this.Gpo, $getGpoParam['Server']
            }
        }

        if ($this.ValuePrefix -and $this.ValueName)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'InvalidParameters'
                Phrase = (Get-PSFLocalizedString -Name Error.GPRegistryValue.PrefixAndName -Module GpoDsc) -f $this.Gpo, $getGpoParam['Server']
            }
        }

        $foundGpo = Get-GPO @getGpoParam

        if (-not $foundGpo)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'NoGpo'
                Phrase = (Get-PSFLocalizedString -Name Error.Generic.GpoMissing -Module GpoDsc) -f $this.Gpo, $getGpoParam['Server']
            }
        }

        $regValueParam = Sync-Parameter -Command (Get-Command -Name Get-GPRegistryValue) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $regvalue = if ($this.ValuePrefix)
        {
            $regValueParam.Remove('ValueName')
            $foundGpo | Get-GPRegistryValue @regValueParam -ErrorAction SilentlyContinue | Where-Object ValueName -match "^$($this.ValuePrefix)\d+"
        }
        else
        {
            $foundGpo | Get-GPRegistryValue @regValueParam -ErrorAction SilentlyContinue
        }

        if ($regValue.Value -and $this.Value -and (Compare-Object -ReferenceObject $this.Value -DifferenceObject $regValue.Value | Where SideIndicator -eq '<='))
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'ValuesMissing'
                Phrase = (Get-PSFLocalizedString -Name Error.GPRegistryValue.ValuesMissing -Module GpoDsc) -f $this.Gpo, $getGpoParam['Server'], $regValue.FullKeyPath, ($this.Value -join ','), ($regvalue.Value -join ',')
            }
        }

        if ($this.Ensure -eq 'Present' -and -not $regValue)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'NoValue'
                Phrase = (Get-PSFLocalizedString -Name Error.GPRegistryValue.NoValue -Module GpoDsc) -f $this.Gpo, (Join-Path $this.Key $this.ValueName), $getGpoParam['Server']
            }
        }

        if ($this.Ensure -eq 'Absent' -and $regValue)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'TooMuchValue'
                Phrase = (Get-PSFLocalizedString -Name Error.GPRegistryValue.TooMuchValue -Module GpoDsc) -f $this.Gpo, (Join-Path $this.Key $this.ValueName), $getGpoParam['Server']
            }            
        }

        return @{
            Gpo         = $foundGpo.DisplayName
            Key         = $regvalue.FullKeyPath
            ValueName   = $regvalue.ValueName
            Value       = $regvalue.Value
            Additive    = $regValue.PolicyState -eq 'Set'
            Disable     = $regValue.PolicyState -eq 'Delete'
            ValuePrefix = $this.ValuePrefix
            Type        = if ( $regvalue.Type ) {} else { $this.Type }
            DomainName  = $this.DomainName
            Reasons     = $reasonList
            Ensure      = $this.Ensure
            PolicyState = $regvalue.PolicyState
        }
    }

    [bool] Test()
    {
        $currentStatus = $this.Get()
        return $currentStatus.Reasons.Count -eq 0
    }

    [void] Set()
    {
        $currentStatus = $this.Get()
        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $setParam = Sync-Parameter -Command (Get-Command -Name Set-GPRegistryValue) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $setParam['Server'] = Get-NextClosestDomainController @param
        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $setParam['Domain'] = $this.DomainName
        }

        if ($this.Ensure -eq 'Absent')
        {
            $regValueParam = Sync-Parameter -Command (Get-Command -Name Get-GPRegistryValue) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
            $regvalue = if ($this.ValuePrefix)
            {
                $regValueParam.Remove('ValueName')
                Get-GPRegistryValue -Name $currentStatus.Gpo @regValueParam -ErrorAction SilentlyContinue | Where-Object ValueName -match "^$($this.ValuePrefix)\d+"
            }
            else
            {
                Get-GPRegistryValue -Name $currentStatus.Gpo @regValueParam -ErrorAction SilentlyContinue
            }

            $regvalue | Remove-GPRegistryValue
            return
        }

        Write-PSFMessage -Function Set -ModuleName GpoDsc -String Verbose.GPRegistryValue.SettingGPRegistryValue -StringValues $this.Gpo, $this.Key, $setParam['Server']
        Set-GPRegistryValue -Name $currentStatus.Gpo @setParam
    }
}
