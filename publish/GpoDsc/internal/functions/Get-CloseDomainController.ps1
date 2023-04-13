function Get-NextClosestDomainController
{
    [CmdletBinding()]
    param
    (
        [string]
        $DomainName
    )

    $parameters = @{
        Discover        = $true
        Writable        = $true
        NextClosestSite = $true
        ErrorAction     = 'Stop'
    }

    if (-not [string]::IsNullOrWhiteSpace($DomainName))
    {
        $parameters['DomainName'] = $DomainName
    }

    Write-PSFMessage -String Verbose.GetClosestDc -StringValues $DomainName
    Get-ADDomainController $parameters
}
