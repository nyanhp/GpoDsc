<#
    .SYNOPSIS
        Cmdlet stubs for the module GroupPolicy.

    .DESCRIPTION
        This module contains the stubs for the cmdlets in the module GroupPolicy version 1.0.0.0.

    .NOTES
        The stubs in this module were generated from the Write-ModuleStubFile function which is distributed as part of the SqlServerDsc module.
#>

# Suppressing this rule because these functions are from an external module and are only being used as stubs
[System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingUserNameAndPassWordParams', '')]
param()

function Backup-GPO
{
    [CmdletBinding(DefaultParameterSetName='BackupOne(GUID)', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216697')]
    param
    (
        [Parameter(ParameterSetName='BackupOne(GUID)', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='BackupOne(Name)', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true)]
        [Alias('backupLocation')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},

        [ValidateLength(1, 2048)]
        [string]
        ${Comment},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},

        [Parameter(ParameterSetName='BackupAll')]
        [ValidateNotNullOrEmpty()]
        [switch]
        ${All}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Copy-GPO
{
    [CmdletBinding(DefaultParameterSetName='SourcebyGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216698')]
    param
    (
        [Parameter(ParameterSetName='SourcebyGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${SourceGuid},

        [Parameter(ParameterSetName='SourcebyName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${SourceName},

        [Parameter(Mandatory=$true)]
        [string]
        ${TargetName},

        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${SourceDomain},

        [ValidateNotNullOrEmpty()]
        [string]
        ${TargetDomain},

        [ValidateNotNullOrEmpty()]
        [string]
        ${SourceDomainController},

        [ValidateNotNullOrEmpty()]
        [string]
        ${TargetDomainController},

        [ValidateNotNullOrEmpty()]
        [string]
        ${MigrationTable},

        [ValidateNotNullOrEmpty()]
        [switch]
        ${CopyAcl}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Get-GPInheritance
{
    [CmdletBinding(HelpUri='https://go.microsoft.com/fwlink/?LinkId=216699')]
    param
    (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('path')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Target},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [string]
        ${Domain},

        [Alias('DC')]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Get-GPO
{
    [CmdletBinding(DefaultParameterSetName='ByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216700')]
    param
    (
        [Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(ParameterSetName='ByGUID', Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [string]
        ${Domain},

        [Parameter(Position=2)]
        [Alias('DC')]
        [string]
        ${Server},

        [Parameter(ParameterSetName='GetAll')]
        [switch]
        ${All}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Get-GPOReport
{
    [CmdletBinding(DefaultParameterSetName='ByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216701')]
    param
    (
        [Parameter(ParameterSetName='ByGUID', Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${ReportType},

        [Parameter(Position=2)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},

        [Parameter(Position=3, ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Parameter(Position=4)]
        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},

        [Parameter(ParameterSetName='ReportAll', Mandatory=$true, Position=5)]
        [ValidateNotNullOrEmpty()]
        [switch]
        ${All}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Get-GPPermission
{
    [CmdletBinding(DefaultParameterSetName='SourcebyGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216702')]
    param
    (
        [Parameter(ParameterSetName='SourcebyGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('ID')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='SourcebyName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [ValidateNotNullOrEmpty()]
        [string]
        ${TargetName},

        [System.Object]
        ${TargetType},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('Domain')]
        [string]
        ${DomainName},

        [Alias('DC')]
        [string]
        ${Server},

        [switch]
        ${All}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

New-Alias -Name Get-GPPermissions -Value Get-GPPermission

function Get-GPPrefRegistryValue
{
    [CmdletBinding(DefaultParameterSetName='GetByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216704')]
    param
    (
        [Parameter(ParameterSetName='GetByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(ParameterSetName='GetByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Context},

        [Parameter(Mandatory=$true)]
        [Alias('FullKeyPath')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Key},

        [ValidateNotNull()]
        [string]
        ${ValueName},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [int]
        ${Order},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Get-GPRegistryValue
{
    [CmdletBinding(DefaultParameterSetName='GetByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216705')]
    param
    (
        [Parameter(ParameterSetName='GetByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(ParameterSetName='GetByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(Mandatory=$true)]
        [Alias('FullKeyPath')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Key},

        [ValidateNotNull()]
        [string]
        ${ValueName},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Get-GPResultantSetOfPolicy
{
    [CmdletBinding(HelpUri='https://go.microsoft.com/fwlink/?LinkId=216706')]
    param
    (
        [string]
        ${Computer},

        [string]
        ${User},

        [Parameter(Mandatory=$true)]
        [System.Object]
        ${ReportType},

        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Get-GPStarterGPO
{
    [CmdletBinding(DefaultParameterSetName='ByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216707')]
    param
    (
        [Parameter(ParameterSetName='ByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},

        [Parameter(ParameterSetName='GetAll')]
        [switch]
        ${All}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Import-GPO
{
    [CmdletBinding(DefaultParameterSetName='ImportGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216708')]
    param
    (
        [Parameter(ParameterSetName='ImportGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${BackupId},

        [Parameter(ParameterSetName='ImportName', Mandatory=$true, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('DisplayName')]
        [string]
        ${BackupGpoName},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('backupLocation','BackupDirectory')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},

        [ValidateNotNullOrEmpty()]
        [guid]
        ${TargetGuid},

        [string]
        ${TargetName},

        [ValidateNotNullOrEmpty()]
        [string]
        ${MigrationTable},

        [ValidateNotNullOrEmpty()]
        [switch]
        ${CreateIfNeeded},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Invoke-GPUpdate
{
    [CmdletBinding(DefaultParameterSetName='NonSyncSet', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216709')]
    param
    (
        [switch]
        ${AsJob},

        [switch]
        ${Boot},

        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('DNSHostName')]
        [string]
        ${Computer},

        [Parameter(Position=1)]
        [Alias('RandomnessInMinutes')]
        [ValidateRange(0, 44640)]
        [int]
        ${RandomDelayInMinutes},

        [Parameter(ParameterSetName='NonSyncSet')]
        [switch]
        ${Force},

        [switch]
        ${LogOff},

        [string]
        ${Target},

        [Parameter(ParameterSetName='SyncSet')]
        [switch]
        ${Sync}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function New-GPLink
{
    [CmdletBinding(DefaultParameterSetName='LinkbyGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216710')]
    param
    (
        [Parameter(ParameterSetName='LinkbyGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('ID')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='LinkbyName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Target},

        [System.Object]
        ${LinkEnabled},

        [int]
        ${Order},

        [Alias('DomainName')]
        [string]
        ${Domain},

        [Alias('DC')]
        [string]
        ${Server},

        [System.Object]
        ${Enforced}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function New-GPO
{
    [CmdletBinding(DefaultParameterSetName='New', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216711')]
    param
    (
        [Parameter(ParameterSetName='New', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='NewStarterGUID', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='NewStarterName', Mandatory=$true, Position=0)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(ParameterSetName='NewStarterGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${StarterGpoGuid},

        [Parameter(ParameterSetName='NewStarterName', Mandatory=$true)]
        [string]
        ${StarterGpoName},

        [ValidateLength(1, 2048)]
        [string]
        ${Comment},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function New-GPStarterGPO
{
    [CmdletBinding(ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216712')]
    param
    (
        [Parameter(Mandatory=$true, Position=0)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [ValidateLength(1, 2048)]
        [string]
        ${Comment},

        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Remove-GPLink
{
    [CmdletBinding(DefaultParameterSetName='LinkbyGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216713')]
    param
    (
        [Parameter(ParameterSetName='LinkbyGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('ID','GPOID')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='LinkbyName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Target},

        [Alias('DomainName')]
        [string]
        ${Domain},

        [Alias('DC')]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Remove-GPO
{
    [CmdletBinding(DefaultParameterSetName='ByGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216714')]
    param
    (
        [Parameter(ParameterSetName='ByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('ID','GPOID')]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [string]
        ${Domain},

        [Alias('DC')]
        [string]
        ${Server},

        [switch]
        ${KeepLinks}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Remove-GPPrefRegistryValue
{
    [CmdletBinding(DefaultParameterSetName='GetByGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216715')]
    param
    (
        [Parameter(ParameterSetName='GetByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='GetByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},

        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Context},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('FullKeyPath')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Key},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${ValueName},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [int]
        ${Order},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Parameter(Position=6)]
        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Remove-GPRegistryValue
{
    [CmdletBinding(DefaultParameterSetName='GetByGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216716')]
    param
    (
        [Parameter(ParameterSetName='GetByGUID', Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='GetByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},

        [Parameter(Mandatory=$true, Position=1, ValueFromPipelineByPropertyName=$true)]
        [Alias('FullKeyPath')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Key},

        [Parameter(Position=2, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${ValueName},

        [Parameter(Position=3, ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Parameter(Position=4)]
        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Rename-GPO
{
    [CmdletBinding(DefaultParameterSetName='RenameByGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216717')]
    param
    (
        [Parameter(ParameterSetName='RenameByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='RenameByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true)]
        [string]
        ${TargetName},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Restore-GPO
{
    [CmdletBinding(DefaultParameterSetName='RestoreFromBackupId', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216718')]
    param
    (
        [Parameter(ParameterSetName='RestoreFromBackupId', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${BackupId},

        [Parameter(ParameterSetName='RestoreFromGpo(GUID)', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='RestoreFromGpo(Name)', Mandatory=$true, Position=0)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('backupLocation','BackupDirectory')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},

        [Parameter(ParameterSetName='RestoreAll', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [switch]
        ${All}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Set-GPInheritance
{
    [CmdletBinding(ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216719')]
    param
    (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('path')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Target},

        [Parameter(Mandatory=$true)]
        [System.Object]
        ${IsBlocked},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [string]
        ${Domain},

        [Alias('DC')]
        [string]
        ${Server}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Set-GPLink
{
    [CmdletBinding(DefaultParameterSetName='LinkGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216720')]
    param
    (
        [Parameter(ParameterSetName='LinkGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('ID','GPOID')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='LinkName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Target},

        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${LinkEnabled},

        [int]
        ${Order},

        [Alias('DomainName')]
        [string]
        ${Domain},

        [Alias('DC')]
        [string]
        ${Server},

        [System.Object]
        ${Enforced}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Set-GPPermission
{
    [CmdletBinding(DefaultParameterSetName='PermissionOne(GUID)', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216721')]
    param
    (
        [Parameter(ParameterSetName='PermissionOne(GUID)', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('ID')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='PermissionOne(Name)', Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true)]
        [System.Object]
        ${PermissionLevel},

        [Parameter(Mandatory=$true)]
        [string]
        ${TargetName},

        [Parameter(Mandatory=$true)]
        [System.Object]
        ${TargetType},

        [Alias('Domain')]
        [string]
        ${DomainName},

        [Alias('DC')]
        [string]
        ${Server},

        [Parameter(ParameterSetName='PermissionAll', Mandatory=$true)]
        [switch]
        ${All},

        [switch]
        ${Replace}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

New-Alias -Name Set-GPPermissions -Value Set-GPPermission

function Set-GPPrefRegistryValue
{
    [CmdletBinding(DefaultParameterSetName='ByGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216722')]
    param
    (
        [Parameter(ParameterSetName='ByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Context},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('FullKeyPath')]
        [ValidateNotNullOrEmpty()]
        [ValidateLength(1, 260)]
        [string]
        ${Key},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [ValidateLength(0, 255)]
        [string]
        ${ValueName},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [psobject]
        ${Value},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Type},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Action},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [int]
        ${Order},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},

        [ValidateNotNullOrEmpty()]
        [switch]
        ${Disable}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


function Set-GPRegistryValue
{
    [CmdletBinding(DefaultParameterSetName='ByGUID', ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216176')]
    param
    (
        [Parameter(ParameterSetName='ByGUID', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [guid]
        ${Guid},

        [Parameter(ParameterSetName='ByName', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('DisplayName')]
        [string]
        ${Name},

        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('FullKeyPath')]
        [ValidateNotNullOrEmpty()]
        [ValidateLength(1, 260)]
        [string]
        ${Key},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [ValidateLength(0, 255)]
        [string[]]
        ${ValueName},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [psobject]
        ${Value},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Type},

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},

        [Alias('DC')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},

        [ValidateNotNullOrEmpty()]
        [switch]
        ${Additive},

        [ValidateNotNullOrEmpty()]
        [switch]
        ${Disable},

        [ValidateNotNullOrEmpty()]
        [string]
        ${ValuePrefix}
    )

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


