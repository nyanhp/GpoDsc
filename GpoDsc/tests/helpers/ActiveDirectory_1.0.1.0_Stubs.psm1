<#
    .SYNOPSIS
        Cmdlet stubs for the module ActiveDirectory.

    .DESCRIPTION
        This module contains the stubs for the cmdlets in the module ActiveDirectory version 1.0.1.0.

    .NOTES
        The stubs in this module were generated from the Write-ModuleStubFile function which is distributed as part of the SqlServerDsc module.
#>

# Suppressing this rule because these functions are from an external module and are only being used as stubs
[System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingUserNameAndPassWordParams', '')]
param()
function Add-ADCentralAccessPolicyMember
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADCentralAccessPolicy] $Identity,

[Microsoft.ActiveDirectory.Management.ADCentralAccessRule[]] $Members,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Add-ADComputerServiceAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADComputer] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADServiceAccount[]] $ServiceAccount

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Add-ADDomainControllerPasswordReplicationPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $AllowedList,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $DeniedList,

[Microsoft.ActiveDirectory.Management.ADDomainController] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Add-ADFineGrainedPasswordPolicySubject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $Subjects

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Add-ADGroupMember
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADGroup] $Identity,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $Members,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MemberTimeToLive,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[System.Management.Automation.SwitchParameter] $DisablePermissiveModify

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Add-ADPrincipalGroupMembership
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $Identity,

[Microsoft.ActiveDirectory.Management.ADGroup[]] $MemberOf,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Add-ADResourcePropertyListMember
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyList] $Identity,

[Microsoft.ActiveDirectory.Management.ADResourceProperty[]] $Members,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Clear-ADAccountExpiration
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Clear-ADClaimTransformLink
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADTrust] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[Microsoft.ActiveDirectory.Management.ADClaimTransformPolicy] $Policy,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADTrustRole] $TrustRole

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Disable-ADAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Disable-ADOptionalFeature
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADOptionalFeature] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[Microsoft.ActiveDirectory.Management.ADOptionalFeatureScope] $Scope,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADEntity] $Target

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Enable-ADAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Enable-ADOptionalFeature
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADOptionalFeature] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[Microsoft.ActiveDirectory.Management.ADOptionalFeatureScope] $Scope,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADEntity] $Target

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADAccountAuthorizationGroup
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADAccountResultantPasswordReplicationPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADDomainController] $DomainController,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADAuthenticationPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADAuthenticationPolicySilo
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADCentralAccessPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADCentralAccessPolicy] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADCentralAccessRule
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADCentralAccessRule] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADClaimTransformPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADClaimTransformPolicy] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADClaimType
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADClaimType] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADComputer
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADComputer] $Identity,

[System.String] $LDAPFilter,

[System.String] $Partition,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADComputerServiceAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADComputer] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADDCCloningExcludedApplicationList
{
[CmdletBinding()]
param
(
[System.Management.Automation.SwitchParameter] $Force,

[System.Management.Automation.SwitchParameter] $GenerateXml,

[System.String] $Path

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADDefaultDomainPasswordPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.Commands.ADCurrentDomainType] $Current,

[Microsoft.ActiveDirectory.Management.ADDefaultDomainPasswordPolicy] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADDomain
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.Commands.ADCurrentDomainType] $Current,

[Microsoft.ActiveDirectory.Management.ADDomain] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADDomainController
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.SwitchParameter] $AvoidSelf,

[System.Management.Automation.PSCredential] $Credential,

[System.Management.Automation.SwitchParameter] $Discover,

[System.String] $DomainName,

[System.String] $Filter,

[System.Management.Automation.SwitchParameter] $ForceDiscover,

[Microsoft.ActiveDirectory.Management.ADDomainController] $Identity,

[Microsoft.ActiveDirectory.Management.Commands.ADMinimumDirectoryServiceVersion] $MinimumDirectoryServiceVersion,

[System.Management.Automation.SwitchParameter] $NextClosestSite,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.Commands.ADDiscoverableService[]] $Service,

[System.String] $SiteName,

[System.Management.Automation.SwitchParameter] $Writable

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADDomainControllerPasswordReplicationPolicy
{
[CmdletBinding()]
param
(
[System.Management.Automation.SwitchParameter] $Allowed,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.Management.Automation.SwitchParameter] $Denied,

[Microsoft.ActiveDirectory.Management.ADDomainController] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADDomainControllerPasswordReplicationPolicyUsage
{
[CmdletBinding()]
param
(
[System.Management.Automation.SwitchParameter] $AuthenticatedAccounts,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADDomainController] $Identity,

[System.Management.Automation.SwitchParameter] $RevealedAccounts,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADFineGrainedPasswordPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADFineGrainedPasswordPolicySubject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADForest
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.Commands.ADCurrentForestType] $Current,

[Microsoft.ActiveDirectory.Management.ADForest] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADGroup
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADGroup] $Identity,

[System.String] $LDAPFilter,

[System.String] $Partition,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server,

[System.Management.Automation.SwitchParameter] $ShowMemberTimeToLive

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADGroupMember
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADGroup] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $Recursive,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADObject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADObject] $Identity,

[System.Management.Automation.SwitchParameter] $IncludeDeletedObjects,

[System.String] $LDAPFilter,

[System.String] $Partition,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADOptionalFeature
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADOptionalFeature] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADOrganizationalUnit
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADOrganizationalUnit] $Identity,

[System.String] $LDAPFilter,

[System.String] $Partition,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADPrincipalGroupMembership
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $Identity,

[System.String] $Partition,

[System.String] $ResourceContextPartition,

[System.String] $ResourceContextServer,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationAttributeMetadata
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[System.Management.Automation.SwitchParameter] $IncludeDeletedObjects,

[Microsoft.ActiveDirectory.Management.ADObject] $Object,

[System.String[]] $Properties,

[System.String] $Server,

[System.Management.Automation.SwitchParameter] $ShowAllLinkedValues

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationConnection
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADReplicationConnection] $Identity,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationFailure
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $EnumeratingServer,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.Commands.ADScopeType] $Scope,

[System.Object[]] $Target

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationPartnerMetadata
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $EnumerationServer,

[System.String] $Filter,

[System.String[]] $Partition,

[Microsoft.ActiveDirectory.Management.Commands.ADPartnerType] $PartnerType,

[Microsoft.ActiveDirectory.Management.Commands.ADScopeType] $Scope,

[System.Object[]] $Target

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationQueueOperation
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Server,

[System.String] $Filter,

[System.String[]] $Partition

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationSite
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Identity,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationSiteLink
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLink] $Identity,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationSiteLinkBridge
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLinkBridge] $Identity,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationSubnet
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADReplicationSubnet] $Identity,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADReplicationUpToDatenessVectorTable
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $EnumerationServer,

[System.String] $Filter,

[System.String[]] $Partition,

[Microsoft.ActiveDirectory.Management.Commands.ADScopeType] $Scope,

[System.Object[]] $Target

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADResourceProperty
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADResourceProperty] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADResourcePropertyList
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyList] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADResourcePropertyValueType
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyValueType] $Identity,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADRootDSE
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADServiceAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Identity,

[System.String] $LDAPFilter,

[System.String] $Partition,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADTrust
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADTrust] $Identity,

[System.Object] $InputObject,

[System.String] $LDAPFilter,

[System.String[]] $Properties,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADUser
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Filter,

[Microsoft.ActiveDirectory.Management.ADUser] $Identity,

[System.String] $LDAPFilter,

[System.String] $Partition,

[System.String[]] $Properties,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Get-ADUserResultantPasswordPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADUser] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Grant-ADAuthenticationPolicySiloAccess
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAccount] $Account,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Install-ADServiceAccount
{
[CmdletBinding()]
param
(
[System.Security.SecureString] $AccountPassword,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.SwitchParameter] $Force,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Identity,

[System.Management.Automation.SwitchParameter] $PromptForPassword

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Move-ADDirectoryServer
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADDirectoryServer] $Identity,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Site

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Move-ADDirectoryServerOperationMasterRole
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.Management.Automation.SwitchParameter] $Force,

[Microsoft.ActiveDirectory.Management.ADDirectoryServer] $Identity,

[Microsoft.ActiveDirectory.Management.ADOperationMasterRole[]] $OperationMasterRole,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Move-ADObject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADObject] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[System.String] $TargetPath,

[System.String] $TargetServer

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADAuthenticationPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String] $ComputerAllowedToAuthenticateTo,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ComputerTGTLifetimeMins,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.Management.Automation.SwitchParameter] $Enforce,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $Instance,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[Microsoft.ActiveDirectory.Management.ADStrongNTLMPolicyType] $RollingNTLMSecret,

[System.String] $Server,

[System.String] $ServiceAllowedToAuthenticateFrom,

[System.String] $ServiceAllowedToAuthenticateTo,

[System.Management.Automation.SwitchParameter] $ServiceAllowedNTLMNetworkAuthentication,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ServiceTGTLifetimeMins,

[System.String] $UserAllowedToAuthenticateFrom,

[System.String] $UserAllowedToAuthenticateTo,

[System.Management.Automation.SwitchParameter] $UserAllowedNTLMNetworkAuthentication,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $UserTGTLifetimeMins

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADAuthenticationPolicySilo
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $ComputerAuthenticationPolicy,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.Management.Automation.SwitchParameter] $Enforce,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $Instance,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $ServiceAuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $UserAuthenticationPolicy

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADCentralAccessPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADCentralAccessPolicy] $Instance,

[System.String] $Name,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADCentralAccessRule
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $CurrentAcl,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADCentralAccessRule] $Instance,

[System.String] $Name,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $ProposedAcl,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.String] $ResourceCondition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADClaimTransformPolicy
{
[CmdletBinding()]
param
(
[System.Management.Automation.SwitchParameter] $AllowAll,

[Microsoft.ActiveDirectory.Management.ADClaimType[]] $AllowAllExcept,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.Management.Automation.SwitchParameter] $DenyAll,

[Microsoft.ActiveDirectory.Management.ADClaimType[]] $DenyAllExcept,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADClaimTransformPolicy] $Instance,

[System.String] $Name,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.String] $Rule,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADClaimType
{
[CmdletBinding()]
param
(
[System.String[]] $AppliesToClasses,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.Boolean] $Enabled,

[System.String] $ID,

[Microsoft.ActiveDirectory.Management.ADClaimType] $Instance,

[System.Boolean] $IsSingleValued,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Boolean] $RestrictValues,

[System.String] $Server,

[System.String] $SourceAttribute,

[System.String] $SourceOID,

[System.Management.Automation.SwitchParameter] $SourceTransformPolicy,

[Microsoft.ActiveDirectory.Management.ADSuggestedValueEntry[]] $SuggestedValues,

[Microsoft.ActiveDirectory.Management.ADClaimValueType] $ValueType

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADComputer
{
[CmdletBinding()]
param
(
[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountExpirationDate,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountNotDelegated,

[System.Security.SecureString] $AccountPassword,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AllowReversiblePasswordEncryption,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $AuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $AuthenticationPolicySilo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CannotChangePassword,

[System.Security.Cryptography.X509Certificates.X509Certificate[]] $Certificates,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ChangePasswordAtLogon,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CompoundIdentitySupported,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.String] $DNSHostName,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Enabled,

[System.String] $HomePage,

[Microsoft.ActiveDirectory.Management.ADComputer] $Instance,

[Microsoft.ActiveDirectory.Management.ADKerberosEncryptionType] $KerberosEncryptionType,

[System.String] $Location,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.String] $Name,

[System.String] $OperatingSystem,

[System.String] $OperatingSystemHotfix,

[System.String] $OperatingSystemServicePack,

[System.String] $OperatingSystemVersion,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNeverExpires,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNotRequired,

[System.String] $Path,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToDelegateToAccount,

[System.String] $SAMAccountName,

[System.String] $Server,

[System.String[]] $ServicePrincipalNames,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TrustedForDelegation,

[System.String] $UserPrincipalName

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADDCCloneConfigFile
{
[CmdletBinding()]
param
(
[System.String] $AlternateWINSServer,

[System.String] $CloneComputerName,

[System.String] $IPv4Address,

[System.String] $IPv4DefaultGateway,

[System.String[]] $IPv4DNSResolver,

[System.String] $IPv4SubnetMask,

[System.String[]] $IPv6DNSResolver,

[System.Management.Automation.SwitchParameter] $Offline,

[System.String] $Path,

[System.String] $PreferredWINSServer,

[System.String] $SiteName,

[System.Management.Automation.SwitchParameter] $Static

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADFineGrainedPasswordPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ComplexityEnabled,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Instance,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutDuration,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutObservationWindow,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutThreshold,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MaxPasswordAge,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MinPasswordAge,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MinPasswordLength,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordHistoryCount,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Precedence,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ReversibleEncryptionEnabled,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADGroup
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupCategory, Microsoft.ActiveDirectory.Management, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]] $GroupCategory,

[System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupScope, Microsoft.ActiveDirectory.Management, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]] $GroupScope,

[System.String] $HomePage,

[Microsoft.ActiveDirectory.Management.ADGroup] $Instance,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Path,

[System.String] $SamAccountName,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADObject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[Microsoft.ActiveDirectory.Management.ADObject] $Instance,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Path,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.String] $Server,

[System.String] $Type

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADOrganizationalUnit
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String] $City,

[System.String] $Country,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[Microsoft.ActiveDirectory.Management.ADOrganizationalUnit] $Instance,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Path,

[System.String] $PostalCode,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.String] $Server,

[System.String] $State,

[System.String] $StreetAddress

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADReplicationSite
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AutomaticInterSiteTopologyGenerationEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AutomaticTopologyGenerationEnabled,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Instance,

[Microsoft.ActiveDirectory.Management.ADDirectoryServer] $InterSiteTopologyGenerator,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $RedundantServerTopologyEnabled,

[System.DirectoryServices.ActiveDirectory.ActiveDirectorySchedule] $ReplicationSchedule,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ScheduleHashingEnabled,

[System.String] $Server,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TopologyCleanupEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TopologyDetectStaleEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TopologyMinimumHopsEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $UniversalGroupCachingEnabled,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $UniversalGroupCachingRefreshSite,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2000BridgeheadSelectionMethodEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2000KCCISTGSelectionBehaviorEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2003KCCBehaviorEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2003KCCIgnoreScheduleEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2003KCCSiteLinkBridgingEnabled

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADReplicationSiteLink
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Cost,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLink] $Instance,

[System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADInterSiteTransportProtocolType, Microsoft.ActiveDirectory.Management, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]] $InterSiteTransportProtocol,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ReplicationFrequencyInMinutes,

[System.DirectoryServices.ActiveDirectory.ActiveDirectorySchedule] $ReplicationSchedule,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADReplicationSite[]] $SitesIncluded

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADReplicationSiteLinkBridge
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLinkBridge] $Instance,

[System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADInterSiteTransportProtocolType, Microsoft.ActiveDirectory.Management, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]] $InterSiteTransportProtocol,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLink[]] $SiteLinksIncluded

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADReplicationSubnet
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSubnet] $Instance,

[System.String] $Location,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Site

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADResourceProperty
{
[CmdletBinding()]
param
(
[System.String[]] $AppliesToResourceTypes,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.Boolean] $Enabled,

[System.String] $ID,

[Microsoft.ActiveDirectory.Management.ADResourceProperty] $Instance,

[System.Boolean] $IsSecured,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyValueType] $ResourcePropertyValueType,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADClaimType] $SharesValuesWith,

[Microsoft.ActiveDirectory.Management.ADSuggestedValueEntry[]] $SuggestedValues

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADResourcePropertyList
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyList] $Instance,

[System.String] $Name,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADServiceAccount
{
[CmdletBinding()]
param
(
[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountExpirationDate,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountNotDelegated,

[System.Security.SecureString] $AccountPassword,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $AuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $AuthenticationPolicySilo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Certificates,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CompoundIdentitySupported,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.String] $DNSHostName,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Enabled,

[System.String] $HomePage,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Instance,

[Microsoft.ActiveDirectory.Management.ADKerberosEncryptionType] $KerberosEncryptionType,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ManagedPasswordIntervalInDays,

[System.String] $Name,

[System.Collections.Hashtable] $OtherAttributes,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Path,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToDelegateToAccount,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToRetrieveManagedPassword,

[System.Management.Automation.SwitchParameter] $RestrictToOutboundAuthenticationOnly,

[System.Management.Automation.SwitchParameter] $RestrictToSingleComputer,

[System.String] $SamAccountName,

[System.String] $Server,

[System.String[]] $ServicePrincipalNames,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TrustedForDelegation

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function New-ADUser
{
[CmdletBinding()]
param
(
[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountExpirationDate,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountNotDelegated,

[System.Security.SecureString] $AccountPassword,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AllowReversiblePasswordEncryption,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $AuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $AuthenticationPolicySilo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CannotChangePassword,

[System.Security.Cryptography.X509Certificates.X509Certificate[]] $Certificates,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ChangePasswordAtLogon,

[System.String] $City,

[System.String] $Company,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CompoundIdentitySupported,

[System.String] $Country,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Department,

[System.String] $Description,

[System.String] $DisplayName,

[System.String] $Division,

[System.String] $EmailAddress,

[System.String] $EmployeeID,

[System.String] $EmployeeNumber,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Enabled,

[System.String] $Fax,

[System.String] $GivenName,

[System.String] $HomeDirectory,

[System.String] $HomeDrive,

[System.String] $HomePage,

[System.String] $HomePhone,

[System.String] $Initials,

[Microsoft.ActiveDirectory.Management.ADUser] $Instance,

[Microsoft.ActiveDirectory.Management.ADKerberosEncryptionType] $KerberosEncryptionType,

[System.String] $LogonWorkstations,

[Microsoft.ActiveDirectory.Management.ADUser] $Manager,

[System.String] $MobilePhone,

[System.String] $Name,

[System.String] $Office,

[System.String] $OfficePhone,

[System.String] $Organization,

[System.Collections.Hashtable] $OtherAttributes,

[System.String] $OtherName,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNeverExpires,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNotRequired,

[System.String] $Path,

[System.String] $POBox,

[System.String] $PostalCode,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToDelegateToAccount,

[System.String] $ProfilePath,

[System.String] $SamAccountName,

[System.String] $ScriptPath,

[System.String] $Server,

[System.String[]] $ServicePrincipalNames,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $SmartcardLogonRequired,

[System.String] $State,

[System.String] $StreetAddress,

[System.String] $Surname,

[System.String] $Title,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TrustedForDelegation,

[System.String] $Type,

[System.String] $UserPrincipalName

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADAuthenticationPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADAuthenticationPolicySilo
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADCentralAccessPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADCentralAccessPolicy] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADCentralAccessPolicyMember
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADCentralAccessPolicy] $Identity,

[Microsoft.ActiveDirectory.Management.ADCentralAccessRule[]] $Members,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADCentralAccessRule
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADCentralAccessRule] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADClaimTransformPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADClaimTransformPolicy] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADClaimType
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.Management.Automation.SwitchParameter] $Force,

[Microsoft.ActiveDirectory.Management.ADClaimType] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADComputer
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADComputer] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADComputerServiceAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADComputer] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADServiceAccount[]] $ServiceAccount

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADDomainControllerPasswordReplicationPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $AllowedList,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $DeniedList,

[Microsoft.ActiveDirectory.Management.ADDomainController] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADFineGrainedPasswordPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADFineGrainedPasswordPolicySubject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $Subjects

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADGroup
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADGroup] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADGroupMember
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADGroup] $Identity,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $Members,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[System.Management.Automation.SwitchParameter] $DisablePermissiveModify

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADObject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADObject] $Identity,

[System.Management.Automation.SwitchParameter] $IncludeDeletedObjects,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $Recursive,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADOrganizationalUnit
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADOrganizationalUnit] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $Recursive,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADPrincipalGroupMembership
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $Identity,

[Microsoft.ActiveDirectory.Management.ADGroup[]] $MemberOf,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADReplicationSite
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADReplicationSiteLink
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLink] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADReplicationSiteLinkBridge
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLinkBridge] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADReplicationSubnet
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADReplicationSubnet] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADResourceProperty
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADResourceProperty] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADResourcePropertyList
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyList] $Identity,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADResourcePropertyListMember
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyList] $Identity,

[Microsoft.ActiveDirectory.Management.ADResourceProperty[]] $Members,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADServiceAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Remove-ADUser
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADUser] $Identity,

[System.String] $Partition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Rename-ADObject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADObject] $Identity,

[System.String] $NewName,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Reset-ADServiceAccountPassword
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Identity,

[System.String] $Partition

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Restore-ADObject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADObject] $Identity,

[System.String] $NewName,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[System.String] $TargetPath

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Revoke-ADAuthenticationPolicySiloAccess
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAccount] $Account,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Search-ADAccount
{
[CmdletBinding()]
param
(
[System.Management.Automation.SwitchParameter] $AccountDisabled,

[System.Management.Automation.SwitchParameter] $AccountExpired,

[System.Management.Automation.SwitchParameter] $AccountExpiring,

[System.Management.Automation.SwitchParameter] $AccountInactive,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.SwitchParameter] $ComputersOnly,

[System.Management.Automation.PSCredential] $Credential,

[System.DateTime] $DateTime,

[System.Management.Automation.SwitchParameter] $LockedOut,

[System.Management.Automation.SwitchParameter] $PasswordExpired,

[System.Management.Automation.SwitchParameter] $PasswordNeverExpires,

[System.Int32] $ResultPageSize,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ResultSetSize,

[System.String] $SearchBase,

[Microsoft.ActiveDirectory.Management.ADSearchScope] $SearchScope,

[System.String] $Server,

[System.TimeSpan] $TimeSpan,

[System.Management.Automation.SwitchParameter] $UsersOnly

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADAccountAuthenticationPolicySilo
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $AuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $AuthenticationPolicySilo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADAccountControl
{
[CmdletBinding()]
param
(
[System.Boolean] $AccountNotDelegated,

[System.Boolean] $AllowReversiblePasswordEncryption,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Boolean] $CannotChangePassword,

[System.Management.Automation.PSCredential] $Credential,

[System.Boolean] $DoesNotRequirePreAuth,

[System.Boolean] $Enabled,

[System.Boolean] $HomedirRequired,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.Boolean] $MNSLogonAccount,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Boolean] $PasswordNeverExpires,

[System.Boolean] $PasswordNotRequired,

[System.String] $Server,

[System.Boolean] $TrustedForDelegation,

[System.Boolean] $TrustedToAuthForDelegation,

[System.Boolean] $UseDESKeyOnly

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADAccountExpiration
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $DateTime,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[System.TimeSpan] $TimeSpan

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADAccountPassword
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.Security.SecureString] $NewPassword,

[System.Security.SecureString] $OldPassword,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Management.Automation.SwitchParameter] $Reset,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADAuthenticationPolicy
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.String] $ComputerAllowedToAuthenticateTo,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ComputerTGTLifetimeMins,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.Boolean] $Enforce,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $Identity,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[Microsoft.ActiveDirectory.Management.ADStrongNTLMPolicyType] $RollingNTLMSecret,

[System.String] $Server,

[System.String] $ServiceAllowedToAuthenticateFrom,

[System.String] $ServiceAllowedToAuthenticateTo,

[System.Boolean] $ServiceAllowedNTLMNetworkAuthentication,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ServiceTGTLifetimeMins,

[System.String] $UserAllowedToAuthenticateFrom,

[System.String] $UserAllowedToAuthenticateTo,

[System.Boolean] $UserAllowedNTLMNetworkAuthentication,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $UserTGTLifetimeMins

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADAuthenticationPolicySilo
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $ComputerAuthenticationPolicy,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.Boolean] $Enforce,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $Identity,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $ServiceAuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $UserAuthenticationPolicy

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADCentralAccessPolicy
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADCentralAccessPolicy] $Identity,

[Microsoft.ActiveDirectory.Management.ADCentralAccessPolicy] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADCentralAccessRule
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $CurrentAcl,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADCentralAccessRule] $Identity,

[Microsoft.ActiveDirectory.Management.ADCentralAccessRule] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $ProposedAcl,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $ResourceCondition,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADClaimTransformLink
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADTrust] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[Microsoft.ActiveDirectory.Management.ADClaimTransformPolicy] $Policy,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADTrustRole] $TrustRole

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADClaimTransformPolicy
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[System.Management.Automation.SwitchParameter] $AllowAll,

[Microsoft.ActiveDirectory.Management.ADClaimType[]] $AllowAllExcept,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.Management.Automation.SwitchParameter] $DenyAll,

[Microsoft.ActiveDirectory.Management.ADClaimType[]] $DenyAllExcept,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADClaimTransformPolicy] $Identity,

[Microsoft.ActiveDirectory.Management.ADClaimTransformPolicy] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Rule,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADClaimType
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[System.String[]] $AppliesToClasses,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.Boolean] $Enabled,

[Microsoft.ActiveDirectory.Management.ADClaimType] $Identity,

[Microsoft.ActiveDirectory.Management.ADClaimType] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.Boolean] $RestrictValues,

[System.String] $Server,

[System.String] $SourceAttribute,

[System.String] $SourceOID,

[System.Management.Automation.SwitchParameter] $SourceTransformPolicy,

[Microsoft.ActiveDirectory.Management.ADSuggestedValueEntry[]] $SuggestedValues

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADComputer
{
[CmdletBinding()]
param
(
[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountExpirationDate,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountNotDelegated,

[System.Collections.Hashtable] $Add,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AllowReversiblePasswordEncryption,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $AuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $AuthenticationPolicySilo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CannotChangePassword,

[System.Collections.Hashtable] $Certificates,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ChangePasswordAtLogon,

[System.String[]] $Clear,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CompoundIdentitySupported,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.String] $DNSHostName,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Enabled,

[System.String] $HomePage,

[Microsoft.ActiveDirectory.Management.ADComputer] $Identity,

[Microsoft.ActiveDirectory.Management.ADComputer] $Instance,

[Microsoft.ActiveDirectory.Management.ADKerberosEncryptionType] $KerberosEncryptionType,

[System.String] $Location,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.String] $OperatingSystem,

[System.String] $OperatingSystemHotfix,

[System.String] $OperatingSystemServicePack,

[System.String] $OperatingSystemVersion,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNeverExpires,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNotRequired,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToDelegateToAccount,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $SAMAccountName,

[System.String] $Server,

[System.Collections.Hashtable] $ServicePrincipalNames,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TrustedForDelegation,

[System.String] $UserPrincipalName

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADDefaultDomainPasswordPolicy
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ComplexityEnabled,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADDefaultDomainPasswordPolicy] $Identity,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutDuration,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutObservationWindow,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutThreshold,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MaxPasswordAge,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MinPasswordAge,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MinPasswordLength,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordHistoryCount,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ReversibleEncryptionEnabled,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADDomain
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[System.Collections.Hashtable] $AllowedDNSSuffixes,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADDomain] $Identity,

[Microsoft.ActiveDirectory.Management.ADDomain] $Instance,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LastLogonReplicationInterval,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Boolean] $PublicKeyRequiredPasswordRolling,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADDomainMode
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADDomainMode] $DomainMode,

[Microsoft.ActiveDirectory.Management.ADDomain] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADFineGrainedPasswordPolicy
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ComplexityEnabled,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Identity,

[Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy] $Instance,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutDuration,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutObservationWindow,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $LockoutThreshold,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MaxPasswordAge,

[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MinPasswordAge,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $MinPasswordLength,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordHistoryCount,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Precedence,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ReversibleEncryptionEnabled,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADForest
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADForest] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server,

[System.Collections.Hashtable] $SPNSuffixes,

[System.Collections.Hashtable] $UPNSuffixes

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADForestMode
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADForestMode] $ForestMode,

[Microsoft.ActiveDirectory.Management.ADForest] $Identity,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADGroup
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupCategory, Microsoft.ActiveDirectory.Management, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]] $GroupCategory,

[System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupScope, Microsoft.ActiveDirectory.Management, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]] $GroupScope,

[System.String] $HomePage,

[Microsoft.ActiveDirectory.Management.ADGroup] $Identity,

[Microsoft.ActiveDirectory.Management.ADGroup] $Instance,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $SamAccountName,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADObject
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[Microsoft.ActiveDirectory.Management.ADObject] $Identity,

[Microsoft.ActiveDirectory.Management.ADObject] $Instance,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADOrganizationalUnit
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String] $City,

[System.String[]] $Clear,

[System.String] $Country,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[Microsoft.ActiveDirectory.Management.ADOrganizationalUnit] $Identity,

[Microsoft.ActiveDirectory.Management.ADOrganizationalUnit] $Instance,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $PostalCode,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server,

[System.String] $State,

[System.String] $StreetAddress

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADReplicationConnection
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADReplicationConnection] $Identity,

[Microsoft.ActiveDirectory.Management.ADReplicationConnection] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[Microsoft.ActiveDirectory.Management.ADDirectoryServer] $ReplicateFromDirectoryServer,

[System.DirectoryServices.ActiveDirectory.ActiveDirectorySchedule] $ReplicationSchedule,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADReplicationSite
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AutomaticInterSiteTopologyGenerationEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AutomaticTopologyGenerationEnabled,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Identity,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Instance,

[Microsoft.ActiveDirectory.Management.ADDirectoryServer] $InterSiteTopologyGenerator,

[Microsoft.ActiveDirectory.Management.ADPrincipal] $ManagedBy,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $RedundantServerTopologyEnabled,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.DirectoryServices.ActiveDirectory.ActiveDirectorySchedule] $ReplicationSchedule,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ScheduleHashingEnabled,

[System.String] $Server,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TopologyCleanupEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TopologyDetectStaleEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TopologyMinimumHopsEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $UniversalGroupCachingEnabled,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $UniversalGroupCachingRefreshSite,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2000BridgeheadSelectionMethodEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2000KCCISTGSelectionBehaviorEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2003KCCBehaviorEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2003KCCIgnoreScheduleEnabled,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $WindowsServer2003KCCSiteLinkBridgingEnabled

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADReplicationSiteLink
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Cost,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLink] $Identity,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLink] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.Int32] $ReplicationFrequencyInMinutes,

[System.DirectoryServices.ActiveDirectory.ActiveDirectorySchedule] $ReplicationSchedule,

[System.String] $Server,

[System.Collections.Hashtable] $SitesIncluded

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADReplicationSiteLinkBridge
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLinkBridge] $Identity,

[Microsoft.ActiveDirectory.Management.ADReplicationSiteLinkBridge] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server,

[System.Collections.Hashtable] $SiteLinksIncluded

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADReplicationSubnet
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADReplicationSubnet] $Identity,

[Microsoft.ActiveDirectory.Management.ADReplicationSubnet] $Instance,

[System.String] $Location,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADReplicationSite] $Site

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADResourceProperty
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[System.Collections.Hashtable] $AppliesToResourceTypes,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.Boolean] $Enabled,

[Microsoft.ActiveDirectory.Management.ADResourceProperty] $Identity,

[Microsoft.ActiveDirectory.Management.ADResourceProperty] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server,

[Microsoft.ActiveDirectory.Management.ADClaimType] $SharesValuesWith,

[Microsoft.ActiveDirectory.Management.ADSuggestedValueEntry[]] $SuggestedValues

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADResourcePropertyList
{
[CmdletBinding()]
param
(
[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Clear,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyList] $Identity,

[Microsoft.ActiveDirectory.Management.ADResourcePropertyList] $Instance,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ProtectedFromAccidentalDeletion,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADServiceAccount
{
[CmdletBinding()]
param
(
[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountExpirationDate,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountNotDelegated,

[System.Collections.Hashtable] $Add,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $AuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $AuthenticationPolicySilo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.String[]] $Certificates,

[System.String[]] $Clear,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CompoundIdentitySupported,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Description,

[System.String] $DisplayName,

[System.String] $DNSHostName,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Enabled,

[System.String] $HomePage,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Identity,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Instance,

[Microsoft.ActiveDirectory.Management.ADKerberosEncryptionType] $KerberosEncryptionType,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToDelegateToAccount,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToRetrieveManagedPassword,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $SamAccountName,

[System.String] $Server,

[System.Collections.Hashtable] $ServicePrincipalNames,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TrustedForDelegation

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Set-ADUser
{
[CmdletBinding()]
param
(
[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountExpirationDate,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AccountNotDelegated,

[System.Collections.Hashtable] $Add,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $AllowReversiblePasswordEncryption,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicy] $AuthenticationPolicy,

[Microsoft.ActiveDirectory.Management.ADAuthenticationPolicySilo] $AuthenticationPolicySilo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CannotChangePassword,

[System.Collections.Hashtable] $Certificates,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $ChangePasswordAtLogon,

[System.String] $City,

[System.String[]] $Clear,

[System.String] $Company,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $CompoundIdentitySupported,

[System.String] $Country,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Department,

[System.String] $Description,

[System.String] $DisplayName,

[System.String] $Division,

[System.String] $EmailAddress,

[System.String] $EmployeeID,

[System.String] $EmployeeNumber,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $Enabled,

[System.String] $Fax,

[System.String] $GivenName,

[System.String] $HomeDirectory,

[System.String] $HomeDrive,

[System.String] $HomePage,

[System.String] $HomePhone,

[Microsoft.ActiveDirectory.Management.ADUser] $Identity,

[System.String] $Initials,

[Microsoft.ActiveDirectory.Management.ADUser] $Instance,

[Microsoft.ActiveDirectory.Management.ADKerberosEncryptionType] $KerberosEncryptionType,

[System.String] $LogonWorkstations,

[Microsoft.ActiveDirectory.Management.ADUser] $Manager,

[System.String] $MobilePhone,

[System.String] $Office,

[System.String] $OfficePhone,

[System.String] $Organization,

[System.String] $OtherName,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNeverExpires,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $PasswordNotRequired,

[System.String] $POBox,

[System.String] $PostalCode,

[Microsoft.ActiveDirectory.Management.ADPrincipal[]] $PrincipalsAllowedToDelegateToAccount,

[System.String] $ProfilePath,

[System.Collections.Hashtable] $Remove,

[System.Collections.Hashtable] $Replace,

[System.String] $SamAccountName,

[System.String] $ScriptPath,

[System.String] $Server,

[System.Collections.Hashtable] $ServicePrincipalNames,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $SmartcardLogonRequired,

[System.String] $State,

[System.String] $StreetAddress,

[System.String] $Surname,

[System.String] $Title,

[System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]] $TrustedForDelegation,

[System.String] $UserPrincipalName

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Show-ADAuthenticationPolicyExpression
{
[CmdletBinding()]
param
(
[System.Management.Automation.SwitchParameter] $AllowedToAuthenticateFrom,

[System.Management.Automation.SwitchParameter] $AllowedToAuthenticateTo,

[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $SDDL,

[System.String] $Server,

[System.String] $Title

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Sync-ADObject
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[System.String] $Destination,

[Microsoft.ActiveDirectory.Management.ADObject] $Object,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.Management.Automation.SwitchParameter] $PasswordOnly,

[System.String] $Source

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Test-ADServiceAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Identity

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Uninstall-ADServiceAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.SwitchParameter] $ForceRemoveLocal,

[Microsoft.ActiveDirectory.Management.ADServiceAccount] $Identity

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}

function Unlock-ADAccount
{
[CmdletBinding()]
param
(
[Microsoft.ActiveDirectory.Management.ADAuthType] $AuthType,

[System.Management.Automation.PSCredential] $Credential,

[Microsoft.ActiveDirectory.Management.ADAccount] $Identity,

[System.String] $Partition,

[System.Management.Automation.SwitchParameter] $PassThru,

[System.String] $Server

)

    throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
}


