function Test-GpoPrerequisites
{
    [OutputType([hashtable])]
    [CmdletBinding()]
    param ()

    $ad = Get-Module -ListAvailable -Name ActiveDirectory -ErrorAction SilentlyContinue
    $gp = Get-Module -ListAvailable -Name GroupPolicy -ErrorAction SilentlyContinue

    if (-not $gp -or -not $ad)
    {
        $str = Get-PSFLocalizedString -Name 'Error.Generic.PrerequisistesMissing' -Module GpoDsc
        throw [System.InvalidOperationException]::new($str)
    }
}
