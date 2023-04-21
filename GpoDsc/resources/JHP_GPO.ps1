[DscResource()]
class GPO
{
    # Name of new GPO, not GUID
    [DscProperty(Key)] [string] $Name
    # Name or GUID, only relevant when GPO does not exist
    [DscProperty()] [string] $StarterGpo
    # Description field
    [DscProperty()] [string] $Comment
    [DscProperty()] [string] $DomainName
    [DscProperty()] [GpoEnsure] $Ensure
    [DscProperty(NotConfigurable)] [GpoReason[]] $Reasons

    [GPO] Get()
    {
        $reasonList = @()
        $resolvedStarterGpo = $null
        $param = Sync-Parameter -Command (Get-Command -Name Get-NextClosestDomainController) -Parameters (Get-DscConfigurableProperty -ResourceInstance $this)
        $dc = Get-NextClosestDomainController @param
        if (-not [string]::IsNullOrWhiteSpace($this.StarterGpo) -and $this.Ensure -eq 'Present')
        {
            $isGuid = $this.StarterGpo -as [guid]
            $getParam = @{
                ErrorAction = 'Stop'
            }

            if ($isGuid)
            {
                $getParam['StarterGpoGuid'] = $isGuid.Guid
            }
            else
            {
                $getParam['StarterGpoName'] = $this.StarterGpo
            }

            if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
            {
                $getParam['Domain'] = $this.DomainName
            }

            $getParam['Server'] = $dc

            try 
            { 
                $resolvedStarterGpo = Get-GPO @getParam
            }
            catch
            {
                $reasonList += [GpoReason]@{
                    Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'StarterGpoMissing'
                    Phrase = (Get-PSFLocalizedString -Name Error.GPO.NoStarterGpo -Module GpoDsc) -f $this.GetType().FullName, $this.StarterGpo, $getParam['Server']
                }
            }
        }

        $getParam = @{
            ErrorAction = 'Stop'
            Name        = $this.Name
            Server      = $dc
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $getParam['Domain'] = $this.DomainName
        }

        $currentGpo = try { Get-GPO @getParam } catch { } # Suppress errors, the cmdlet ignores ErrorAction SilentlyContinue

        if (-not $currentGpo -and $this.Ensure -eq 'Present')
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'GpoMissing'
                Phrase = (Get-PSFLocalizedString -Name Error.GPO.NoGpo -Module GpoDsc) -f $this.Name, $dc
            }
        }

        if ($currentGpo -and $this.Ensure -eq 'Absent')
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'GpoExists'
                Phrase = (Get-PSFLocalizedString -Name Error.GPO.TooMuchGpo -Module GpoDsc) -f $this.Name, $dc
            }
        }

        if ($this.Ensure -eq 'Present' -and $currentGpo -and -not [string]::IsNullOrWhiteSpace($this.Comment) -and $currentGpo.Description -ne $this.Comment)
        {
            $reasonList += [GpoReason]@{
                Code   = (Get-PSFLocalizedString -Name Generic.ReasonCode -Module GpoDsc) -f $($this.GetType().FullName), 'WrongDescription'
                Phrase = (Get-PSFLocalizedString -Name Error.GPO.WrongDescription -Module GpoDsc) -f $this.Name, $this.Comment, $currentGpo.Description, $dc
            }
        }

        return @{
            Name       = $currentGpo.DisplayName
            StarterGpo = $resolvedStarterGpo.DisplayName
            Comment    = $currentGpo.Description
            DomainName = $this.DomainName
            Ensure     = $this.Ensure
            Reasons    = $reasonList
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
        $genericParam = @{
            ErrorAction = 'Stop'
            Name        = $this.Name
        }

        if (-not [string]::IsNullOrWhiteSpace($this.DomainName))
        {
            $genericParam['Domain'] = $this.DomainName
        }

        $dc = Get-NextClosestDomainController @param
        $genericParam['Server'] = $dc

        if ($this.Ensure -eq 'Absent' -and -not [string]::IsNullOrWhiteSpace($currentStatus.Name))
        {
            Remove-GPO @genericParam
            return
        }

        try
        {
            $gpo = Get-GPO @genericParam
            if ($gpo.Description -ne $this.Comment)
            {
                $gpo.Description = $this.Comment
            }

            return
        }
        catch
        { }

        if (-not [string]::IsNullOrWhiteSpace($this.Comment))
        {
            $genericParam['Comment'] = $this.Comment
        }
        if (-not [string]::IsNullOrWhiteSpace($currentStatus.StarterGpo))
        {
            $genericParam['StarterGpoName'] = $this.StarterGpo
        }

        Write-PSFMessage -FunctionName Set -ModuleName GpoDsc -String Verbose.GPO.Create -StringValues $this.Name, $this.Comment, $currentStatus.StarterGpo, $dc
        New-GPO @genericParam
    }
}
