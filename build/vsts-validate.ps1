# Guide for available variables and working with secrets:
# https://docs.microsoft.com/en-us/vsts/build-release/concepts/definitions/build/variables?tabs=powershell

# Needs to ensure things are Done Right and only legal commits to master get built

# Run internal pester tests
$oldPath = $env:PSModulePath
$env:PSModulePath = "$env:BUILD_SOURCESDIRECTORY\GpoDsc\publish\GpoDsc;$env:PSModulePath"
& "$PSScriptRoot\vsts-build.ps1" -SkipPublish -LocalRepo
& "$PSScriptRoot\..\GpoDsc\tests\pester.ps1"
$env:PSModulePath = $oldPath