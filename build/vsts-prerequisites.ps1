﻿Write-Host "Installing Pester" -ForegroundColor Cyan
Install-Module Pester -Force -SkipPublisherCheck
Write-Host "Installing PSScriptAnalyzer" -ForegroundColor Cyan
Install-Module PSScriptAnalyzer -Force -SkipPublisherCheck
Write-Host "Installing PSFramework" -ForegroundColor Cyan
Install-Module PSFramework -Force -SkipPublisherCheck
Write-Host "Installing String" -ForegroundColor Cyan
Install-Module String -Force -SkipPublisherCheck
Write-Host "Installing ChangelogManagement" -ForegroundColor Cyan
Install-Module ChangelogManagement -Force -SkipPublisherCheck
Write-Host "Installing AutomatedLab.Common" -ForegroundColor Cyan
Install-Module AutomatedLab.Common -Force -SkipPublisherCheck