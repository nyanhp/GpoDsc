﻿# Name: GroupPolicy
# Version: 1.0.0.0
# CreatedOn: 2023-05-23 11:03:39Z

Add-Type -IgnoreWarnings -TypeDefinition @'
namespace Microsoft.GroupPolicy
{
    public class ComputerConfiguration
    {
        public bool IsSecondaryStubType = true;
        
        public ComputerConfiguration() { }
    }
    
    public enum EnableLink : int
    {
        Unspecified = 0,
        No = 1,
        Yes = 2,
    }
    
    public enum EnforceLink : int
    {
        Unspecified = 0,
        No = 1,
        Yes = 2,
    }
    
    public class Gpo
    {
        // Property
        public System.Guid Id { get; set; }
        public System.String DisplayName { get; set; }
        public System.String Path { get; set; }
        public System.String Owner { get; set; }
        public System.String DomainName { get; set; }
        public System.DateTime CreationTime { get; set; }
        public System.DateTime ModificationTime { get; set; }
        public Microsoft.GroupPolicy.UserConfiguration User { get; set; }
        public Microsoft.GroupPolicy.ComputerConfiguration Computer { get; set; }
        public Microsoft.GroupPolicy.GpoStatus GpoStatus { get; set; }
        public Microsoft.GroupPolicy.WmiFilter WmiFilter { get; set; }
        public System.String Description { get; set; }
        
        // Fabricated constructor
        private Gpo() { }
        public static Gpo CreateTypeInstance()
        {
            return new Gpo();
        }
    }
    
    public class GpoCollection
    {
        // Property
        public System.Int32 Count { get; set; }
        public Microsoft.GroupPolicy.Gpo Item { get; set; }
        
        // Fabricated constructor
        private GpoCollection() { }
        public static GpoCollection CreateTypeInstance()
        {
            return new GpoCollection();
        }
    }
    
    public class GpoLinksCollection
    {
        public bool IsSecondaryStubType = true;
        
        public GpoLinksCollection() { }
    }
    
    public enum GpoStatus : int
    {
        AllSettingsDisabled = 0,
        UserSettingsDisabled = 1,
        ComputerSettingsDisabled = 2,
        AllSettingsEnabled = 3,
    }
    
    public class GPPermission
    {
        // Constructor
        public GPPermission(System.String trustee, Microsoft.GroupPolicy.GPPermissionType rights, System.Boolean inheritable) { }
        public GPPermission(System.Security.Principal.IdentityReference identity, Microsoft.GroupPolicy.GPPermissionType rights, System.Boolean inheritable) { }
        
        // Property
        public System.Boolean Denied { get; set; }
        public System.Boolean Inheritable { get; set; }
        public System.Boolean Inherited { get; set; }
        public Microsoft.GroupPolicy.GPTrustee Trustee { get; set; }
        public Microsoft.GroupPolicy.GPPermissionType Permission { get; set; }
        
        // Fabricated constructor
        private GPPermission() { }
        public static GPPermission CreateTypeInstance()
        {
            return new GPPermission();
        }
    }
    
    public class GPPermissionCollection
    {
        // Property
        public Microsoft.GroupPolicy.GPPermission Item { get; set; }
        public System.Int32 Count { get; set; }
        
        // Fabricated constructor
        private GPPermissionCollection() { }
        public static GPPermissionCollection CreateTypeInstance()
        {
            return new GPPermissionCollection();
        }
    }
    
    public enum GPPermissionType : int
    {
        None = 0,
        GpoApply = 65536,
        GpoRead = 65792,
        GpoEdit = 65793,
        GpoEditDeleteModifySecurity = 65794,
        GpoCustom = 65795,
        WmiFilterEdit = 131072,
        WmiFilterFullControl = 131073,
        WmiFilterCustom = 131074,
        StarterGpoRead = 197888,
        StarterGpoEdit = 197889,
        StarterGpoFullControl = 197890,
        StarterGpoCustom = 197891,
        SomCreateWmiFilter = 1049344,
        SomWmiFilterFullControl = 1049345,
        SomCreateGpo = 1049600,
        SomCreateStarterGpo = 1049856,
        SomLogging = 1573120,
        SomPlanning = 1573376,
        SomLink = 1835008,
    }
    
    public class GPRsop
    {
        // Constructor
        public GPRsop(Microsoft.GroupPolicy.RsopMode mode, System.String wmiNamespace) { }
        
        // Property
        public Microsoft.GroupPolicy.RsopMode RsopMode { get; set; }
        public System.String Namespace { get; set; }
        public System.String LoggingComputer { get; set; }
        public System.String LoggingUser { get; set; }
        public Microsoft.GroupPolicy.LoggingMode LoggingMode { get; set; }
        
        // Fabricated constructor
        private GPRsop() { }
        public static GPRsop CreateTypeInstance()
        {
            return new GPRsop();
        }
    }
    
    public class GPTrustee
    {
        public bool IsSecondaryStubType = true;
        
        public GPTrustee() { }
    }
    
    public enum LoggingMode : int
    {
        UserAndComputer = 0,
        User = 65536,
        Computer = 131072,
    }
    
    public enum PreferenceAction : int
    {
        Create = 0,
        Replace = 1,
        Update = 2,
        Delete = 3,
    }
    
    public class RegistryItem
    {
        // Constructor
        public RegistryItem() { }
        
        // Property
        public System.String KeyPath { get; set; }
        public System.String FullKeyPath { get; set; }
        public Microsoft.Win32.RegistryHive Hive { get; set; }
        
    }
    
    public enum ReportType : int
    {
        Xml = 0,
        Html = 1,
    }
    
    public enum RsopMode : int
    {
        Unknown = 0,
        Planning = 1,
        Logging = 2,
    }
    
    public class Som
    {
        // Property
        public System.Boolean GpoInheritanceBlocked { get; set; }
        public System.String Name { get; set; }
        public System.String Path { get; set; }
        public Microsoft.GroupPolicy.SomType ContainerType { get; set; }
        public Microsoft.GroupPolicy.GpoLinksCollection GpoLinks { get; set; }
        public Microsoft.GroupPolicy.GpoLinksCollection InheritedGpoLinks { get; set; }
        
        // Fabricated constructor
        private Som() { }
        public static Som CreateTypeInstance()
        {
            return new Som();
        }
    }
    
    public enum SomType : int
    {
        Site = 0,
        Domain = 1,
        OU = 2,
    }
    
    public class StarterGpo
    {
        // Property
        public System.String DisplayName { get; set; }
        public System.Guid Id { get; set; }
        public System.String Author { get; set; }
        public System.String Owner { get; set; }
        public System.DateTime CreationTime { get; set; }
        public System.DateTime ModificationTime { get; set; }
        public System.Int32 UserVersion { get; set; }
        public System.Int32 ComputerVersion { get; set; }
        public Microsoft.GroupPolicy.StarterGpoType StarterGpoType { get; set; }
        public System.String Description { get; set; }
        public System.String Product { get; set; }
        public System.String StarterGpoVersion { get; set; }
        
        // Fabricated constructor
        private StarterGpo() { }
        public static StarterGpo CreateTypeInstance()
        {
            return new StarterGpo();
        }
    }
    
    public class StarterGpoCollection
    {
        // Property
        public System.Int32 Count { get; set; }
        public Microsoft.GroupPolicy.StarterGpo Item { get; set; }
        
        // Fabricated constructor
        private StarterGpoCollection() { }
        public static StarterGpoCollection CreateTypeInstance()
        {
            return new StarterGpoCollection();
        }
    }
    
    public enum StarterGpoType : int
    {
        System = 0,
        Custom = 1,
    }
    
    public class UserConfiguration
    {
        public bool IsSecondaryStubType = true;
        
        public UserConfiguration() { }
    }
    
    public class WmiFilter
    {
        public bool IsSecondaryStubType = true;
        
        public WmiFilter() { }
    }
    
}

namespace Microsoft.GroupPolicy.Commands
{
    public enum BlockInheritance : int
    {
        No = 0,
        Yes = 1,
    }
    
    public enum GpoConfiguration : int
    {
        User = 0,
        Computer = 1,
    }
    
    public enum PermissionTrusteeType : int
    {
        Computer = 0,
        User = 1,
        Group = 2,
    }
    
}

'@

function Get-GPPermissions {
    <#
    .SYNOPSIS
        Gets the permission level for one or more security principals on a specified GPO.
    .PARAMETER Guid
        Specifies the GPO from which to retrieve the permission level by its globally unique identifier (GUID). The `GUID` uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Name
        Specifies the GPO from which to retrieve the permission level by its display name.
        The display name isn't guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER TargetName
        Specifies the name of the security principal for which to get the permission level. You can specify a user, a security group, or a computer. You can use either the domain-qualified name of the security principal (domain\account) or just its name.
        For instance, in the `contoso.com` domain, to specify:
        - The username, use `contoso\someuser` or `someuser`.
        - The Domain Admins security group, use `contoso\Domain Admins` or `Domain Admins`.
        - The computer name, use `contoso\computer-01` or `computer-01`.
    .PARAMETER TargetType
        The type of security principal for which to get the permission level. The acceptable values for this parameter are:
        - Computer
        - User
        - Group
    .PARAMETER DomainName
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain. The GPO specified must exist in this domain.
        If you don't specify the Domain parameter, the domain of the user that's running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that's different from the domain of the user that's running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Server parameter by its built-in alias, domain. For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you don't specify the name using the Server parameter, the PDC emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER All
        Indicates that the cmdlet gets the permission level for each user, group, or computer that has permissions on the GPO.
    #>
    
    [CmdletBinding(DefaultParameterSetName='SourcebyGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216702')]
    [OutputType([Microsoft.GroupPolicy.GPPermissionCollection])]
    [OutputType([Microsoft.GroupPolicy.GPPermission])]
    param (
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
        
        [Microsoft.GroupPolicy.Commands.PermissionTrusteeType]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Set-GPPermissions {
    <#
    .SYNOPSIS
        Grants a level of permissions to a security principal for one GPO or all the GPOs in a domain.
    .PARAMETER Guid
        Specifies the GPO for which to set the permission level by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO for which to set the permission level by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain, an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER PermissionLevel
        Specifies the permission level to set for the security principal.
        The acceptable values for this parameter are:
        - GpoRead
        - GpoApply
        - GpoEdit
        - GpoEditDeleteModifySecurity
        - None
    .PARAMETER TargetName
        The name of the security principal for which to set the permission level. You can specify a user, a security group, or a computer. You can use either the domain-qualified name of the security principal (domain\account) or just its name.
        For instance, in the `contoso.com` domain, to specify:
        - The user SomeUser, use `contoso\SomeUser` or `SomeUser`.
        - The Domain Admins security group, use `contoso\Domain Admins` or `Domain Admins`.
        - The computer computer-01, use `contoso\computer-01` or `computer-01`.
    .PARAMETER TargetType
        The type of security principal for which to set the permission level. You must specify User, Group, or Computer.
        The acceptable values for this parameter are:
        - Computer
        - User
        - Group
    .PARAMETER DomainName
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Set-GPPermission` cmdlet, the GPO for which to get the permission level must exist in this domain.
        If you do not specify the DomainName parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the DomainName parameter by its built-in alias, domain. For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    .PARAMETER All
        Specifies that the permission level is set for the specified security principal for all GPOs in the domain.
    .PARAMETER Replace
        Specifies that the existing permission level for the group or user is removed before the new permission level is set. If a security principal is already granted a permission level that is higher than the specified permission level and you do not use the Replace parameter, no change is made.
    #>
    
    [CmdletBinding(DefaultParameterSetName='PermissionOne(GUID)', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216721')]
    param (
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
        [Microsoft.GroupPolicy.GPPermissionType]
        ${PermissionLevel},
        
        [Parameter(Mandatory=$true)]
        [string]
        ${TargetName},
        
        [Parameter(Mandatory=$true)]
        [Microsoft.GroupPolicy.Commands.PermissionTrusteeType]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Backup-GPO {
    <#
    .SYNOPSIS
        Backs up one GPO or all the GPOs in a domain.
    .PARAMETER Guid
        Specifies the GPO to backup by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Name
        Specifies the GPO to backup by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Path
        Specifies the path to the backup directory; for instance, `C:\Backups` or `\MyServer\Backups`.
    .PARAMETER Comment
        Specifies a comment for the backed-up GPO. The comment string must be enclosed in double-quotation or single-quotation marks and can contain 2,047 characters.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain (for example: sales.contoso.com).
        For the Backup-GPO cmdlet, the GPO to back up must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. (If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used.) For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user (or the computer).
        You can also refer to Domain by its built-in alias, domain name. For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases)
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the PDC emulator is contacted.
    .PARAMETER All
        Specifies that all the GPOs in the domain are backed up.
    #>
    
    [CmdletBinding(DefaultParameterSetName='BackupOne(GUID)', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216697')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Copy-GPO {
    <#
    .SYNOPSIS
        Copies a GPO.
    .PARAMETER SourceGuid
        Specifies the source GPO by its globally unique identifier GUID. The GUID uniquely identifies the GPO.
        You can also refer to the SourceGuid parameter by its built-in alias, Id .
    .PARAMETER SourceName
        Specifies the source GPO by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the SourceGuid parameter to uniquely identify a GPO.
        You can also refer to the SourceDomain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases). parameter by its built-in alias, DisplayName .
    .PARAMETER TargetName
        Specifies the display name for the destination GPO. If another GPO with the same display name exists in the target domain, an error occurs.
    .PARAMETER SourceDomain
        Specifies the domain of the source GPO. You must specify the fully qualified domain name (FQDN) of the domain.
        If you do not specify the SourceDomain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the SourceDomain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER TargetDomain
        Specifies the domain to which you want to copy the GPO. You must specify the fully qualified domain name (FQDN) of the domain.
        If you do not specify the TargetDomain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session, a trust must exist between that domain and the domain of the user or the computer.
    .PARAMETER SourceDomainController
        Specifies the name of the domain controller that this cmdlet contacts for the source domain. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the SourceDomainController parameter, the primary domain controller (PDC) emulator is contacted.
    .PARAMETER TargetDomainController
        Specifies the name of the domain controller that this cmdlet contacts for the destination domain. You can specify either the FQDN or the host name.
        If you do not specify the name by using the TargetDomainController parameter, the primary domain controller primary domain controller (PDC) emulator is contacted.
    .PARAMETER MigrationTable
        Specifies the location of the migration table to use for the command. You must specify the full path to the file; for instance, `\Server1\MigrationTables\TestToSalesTable.migtable`. If you supply a migration table, security principals and Universal Naming Convention (UNC) paths are mapped to the destination GPO when you copy a GPO across domains. If you do not supply a migration table, security principals and UNC paths are not modified in the destination GPO.
    .PARAMETER CopyAcl
        Indicates that the cmdlet copies the ACL of the source GPO to the destination GPO.
    #>
    
    [CmdletBinding(DefaultParameterSetName='SourcebyGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216698')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPInheritance {
    <#
    .SYNOPSIS
        Gets Group Policy inheritance information for a specified domain or OU.
    .PARAMETER Target
        Specifies the domain or the OU for which to retrieve the Group Policy inheritance information by its Lightweight Directory Access Protocol (LDAP) distinguished name. For instance, the `MyOU` organizational unit in the `contoso.com` domain is specified as `ou=MyOU,dc=contoso,dc=com`.
        You can also refer to the Target parameter by its built-in alias, Path .
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Get-GPInheritance` cmdlet, this is typically the domain of the container (domain or OU) for which you want to retrieve inheritance information. If the specified domain is different than the domain of the container, a trust must exist between the two domains.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    #>
    
    [CmdletBinding(HelpUri='https://go.microsoft.com/fwlink/?LinkId=216699')]
    [OutputType([Microsoft.GroupPolicy.Som])]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPO {
    <#
    .SYNOPSIS
        Gets one GPO or all the GPOs in a domain.
    .PARAMETER Name
        Specifies the GPO to retrieve by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER Guid
        Specifies the GPO to retrieve by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Get-GPO` cmdlet, the GPO (or GPOs) to that this cmdlet gets must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    .PARAMETER All
        Indicates that the cmdlet gets all the GPOs in the domain.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216700')]
    [OutputType([Microsoft.GroupPolicy.Gpo])]
    [OutputType([Microsoft.GroupPolicy.GpoCollection])]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPOReport {
    <#
    .SYNOPSIS
        Generates a report either in XML or HTML format for a specified GPO or for all GPOs in a domain.
    .PARAMETER Guid
        Specifies the GPO for which to generate the report by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases)
    .PARAMETER Name
        Specifies the GPO for which to generate the report by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER ReportType
        Specifies the format of the report. You must specify either Html (for HTML format) or Xml (for XML format). These values are not case sensitive.
        The following values are permitted for this object type.
    .PARAMETER Path
        Specifies the path to the report file; for instance, `c:\Reports\GpoReport.xml`. If no path is specified, the report is printed to the display.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Get-GPOReport` cmdlet:
        - If a single GPO is specified, it must exist in this domain.
        - If the All parameter is specified, a report is generated for each GPO in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session or, (for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to Domain by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can refer to this parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER All
        Indicates that the cmdlet generates a report for all GPOs in the domain.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216701')]
    [OutputType([System.String])]
    param (
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
        [Microsoft.GroupPolicy.ReportType]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPPermission {
    <#
    .SYNOPSIS
        Gets the permission level for one or more security principals on a specified GPO.
    .PARAMETER Guid
        Specifies the GPO from which to retrieve the permission level by its globally unique identifier (GUID). The `GUID` uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Name
        Specifies the GPO from which to retrieve the permission level by its display name.
        The display name isn't guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER TargetName
        Specifies the name of the security principal for which to get the permission level. You can specify a user, a security group, or a computer. You can use either the domain-qualified name of the security principal (domain\account) or just its name.
        For instance, in the `contoso.com` domain, to specify:
        - The username, use `contoso\someuser` or `someuser`.
        - The Domain Admins security group, use `contoso\Domain Admins` or `Domain Admins`.
        - The computer name, use `contoso\computer-01` or `computer-01`.
    .PARAMETER TargetType
        The type of security principal for which to get the permission level. The acceptable values for this parameter are:
        - Computer
        - User
        - Group
    .PARAMETER DomainName
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain. The GPO specified must exist in this domain.
        If you don't specify the Domain parameter, the domain of the user that's running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that's different from the domain of the user that's running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Server parameter by its built-in alias, domain. For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you don't specify the name using the Server parameter, the PDC emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER All
        Indicates that the cmdlet gets the permission level for each user, group, or computer that has permissions on the GPO.
    #>
    
    [CmdletBinding(DefaultParameterSetName='SourcebyGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216702')]
    [OutputType([Microsoft.GroupPolicy.GPPermissionCollection])]
    [OutputType([Microsoft.GroupPolicy.GPPermission])]
    param (
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
        
        [Microsoft.GroupPolicy.Commands.PermissionTrusteeType]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPPrefRegistryValue {
    <#
    .SYNOPSIS
        Gets one or more Registry preference items under either Computer Configuration or User Configuration in a GPO.
    .PARAMETER Name
        Specifies the GPO from which this cmdlet gets the Registry preference item by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Guid
        Specifies the GPO from which this cmdlet gets the Registry preference item by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Context
        Specifies whether the cmdlet gets the Registry preference item from User Configuration or Computer Configuration in the GPO.
        The acceptable values for this parameter are: User or Computer.
    .PARAMETER Key
        Specifies the registry key for the Registry preference item that this cmdlet gets; for instance: `HKEY_CURRENT_USER\Control Panel\Colors`.
        The acceptable values for this parameter are:
        - HKEY_CLASSES_ROOT (HKCR)
        - HKEY_CURRENT_USER (HKCU)
        - HKEY_LOCAL_MACHINE (HKLM)
        - HKEY_USERS (HKU)
        - HKEY_CURRENT_CONFIG (HKCC)
        Any of these hives can be specified for Registry preference items in both Computer Configuration and User Configuration.
        The Key parameter can be specified with or without the ValueName parameter:
        - If the ValueName parameter is specified, all Registry preference items that configure the   registry value are retrieved.
        - If the ValueName parameter is not specified, all Registry preference items that configure the   registry key and any of its first-level values are retrieved.
        You can also refer to the Key parameter by its built-in alias, FullKeyPath. For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER ValueName
        Specifies the name of a registry value for which this cmdlet gets all Registry preference items. For instance, the registry key `HKEY_CURRENT_USER\Control Panel\Colors` can have a value with the following name: ActiveTitle. For the default value of a registry key, specify either "(default)" or an empty string ("").
        When you want to gets Registry preference items for a registry key and all its first-level values, do not specify this parameter. When you want to get Registry preference items only for a specific registry value, specify this parameter together with the Key parameter.
    .PARAMETER Order
        Specifies the order in which the Registry preference item is applied, relative to the other Registry preference items in the GPO, on a client.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Get-GPPrefRegistryValue` cmdlet, the GPO for which to get the Registry preference item must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name through the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    #>
    
    [CmdletBinding(DefaultParameterSetName='GetByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216704')]
    [OutputType([Microsoft.GroupPolicy.RegistryItem])]
    param (
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
        [Microsoft.GroupPolicy.Commands.GpoConfiguration]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPRegistryValue {
    <#
    .SYNOPSIS
        Gets one or more registry-based policy settings under either Computer Configuration or User Configuration in a GPO.
    .PARAMETER Name
        Specifies the GPO from which this cmdlet gets the registry-based policy setting by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Guid
        Specifies the GPO from which to retrieve the registry-based policy setting by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Key
        Specifies the registry key for which this cmdlet gets the registry-based policy setting. For instance: `HKLM\Software\Policies\Microsoft\Windows NT\DNSClient`.
        The key must be in one of the two following registry hives:
        - HKEY_LOCAL_MACHINE (HKLM) for a registry-based policy setting in Computer Configuration.
        - HKEY_CURRENT_USER (HKCU) for a registry-based policy setting in User Configuration.
        You can specify:
        - The Key parameter without the ValueName parameter to get all the registry-based policy   settings that configure values directly under that key.
        - The Key parameter together with the ValueName parameter to get the registry-based policy   setting that configures a specific registry value.
        You can also refer to the Key parameter by its built-in alias FullKeyPath. For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER ValueName
        Specifies the name of a registry value for which this cmdlet gets the registry-based policy setting. For instance, the registry key `HKLM\Software\Policies\Microsoft\Windows NT\DNSClient` can have a value with the following name: UseDomainNameDevolution. For the default value of a registry key, specify "(default)" or an empty string ("").
        You must also specify the Key parameter with this parameter.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain (for instance: sales.contoso.com).
        For the `Get-GPRegistryValue` cmdlet, the GPO for which to get registry-based policy settings must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to Domain by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
    #>
    
    [CmdletBinding(DefaultParameterSetName='GetByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216705')]
    [OutputType([Microsoft.GroupPolicy.RegistryItem])]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPResultantSetOfPolicy {
    <#
    .SYNOPSIS
        Gets and writes the RSoP information for a user, a computer, or both to a file.
    .PARAMETER Computer
        Specifies the name of the computer for which to generate the report. You can specify the computer name in one of the following formats:
        - Full computer name (FQDN computer name); for example, computer-01.sales.contoso.com.
        - Fully qualified domain name (FQDN)\computer name; for instance, sales.contoso.com\computer-01.
        - NetBIOS domain name\computer name; for instance, sales\computer-01.
        - Computer name (host name): for instance, computer-01.
    .PARAMETER User
        Specifies the user name of the user for which to generate the report. You can specify the user name in one of the following formats:
        - Fully qualified domain name (FQDN)\user name; for instance, `sales.contoso.com\SomeUser`.
        - NetBIOS domain name\user name; for example, `sales\SomeUser`.
        - User name: for example, `SomeUser`.
    .PARAMETER ReportType
        Specifies the format of the RSoP report. You must specify either `Html` (for HTML format) or `Xml` (for XML format). These values are not case sensitive.
        The acceptable values for this parameter are: `Html` or `Xml`.
    .PARAMETER Path
        Specifies the path to the report file; for instance, `c:\Reports\GpRsopReport.xml`.
        You can also refer to the Path parameter by its built-in alias, FilePath . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    #>
    
    [CmdletBinding(HelpUri='https://go.microsoft.com/fwlink/?LinkId=216706')]
    [OutputType([Microsoft.GroupPolicy.GPRsop])]
    param (
        [string]
        ${Computer},
        
        [string]
        ${User},
        
        [Parameter(Mandatory=$true)]
        [Microsoft.GroupPolicy.ReportType]
        ${ReportType},
        
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path}
    )
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Get-GPStarterGPO {
    <#
    .SYNOPSIS
        Gets one Starter GPO or all Starter GPOs in a domain.
    .PARAMETER Guid
        Specifies the Starter GPO that this cmdlet gets by its globally unique identifier (GUID). The GUID uniquely identifies the Starter GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Name
        Specifies the display name of the Starter GPO that this cmdlet.
        The display name is not guaranteed to be unique in the domain. If another Starter GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a Starter GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Get-GPStarterGPO` cmdlet, the Starter GPO must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user, or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER All
        Returns all the Starter GPOs in the domain.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByGUID', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216707')]
    [OutputType([Microsoft.GroupPolicy.StarterGpo])]
    [OutputType([Microsoft.GroupPolicy.StarterGpoCollection])]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Import-GPO {
    <#
    .SYNOPSIS
        Imports the Group Policy settings from a backed-up GPO into a specified GPO.
    .PARAMETER BackupId
        Specifies the backup ID of a GPO backup. The backup ID is a globally unique identifier (GUID) that uniquely identifies the backup. You can use this parameter to specify a particular version of a backed-up GPO in the backup directory.
        The backup ID is different from the ID of the GPO that was backed up.
        You can also refer to the BackupID parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER BackupGpoName
        Specifies the display name of the backed-up GPO from which this cmdlet imports the settings. The most recent backup of the GPO is used. You can use the BackupID parameter to specify a particular version to use when multiple backups of the same GPO exist in the backup directory.
        You can also refer to the BackupGpoName parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Path
        Specifies the path to the backup directory.
        You can also refer to the Path parameter by its built-in aliases: BackupLocation or BackupDirectory .
    .PARAMETER TargetGuid
        Specifies the GUID of the GPO into which this cmdlet imports the settings. Use the CreateIfNeeded parameter to force the GPO to be created if it does not already exist in the domain.
        You must specify either the TargetGuid parameter or the TargetName parameter.
    .PARAMETER TargetName
        Specifies the display name of the GPO into which the settings are to be imported. Use the CreateIfNeeded parameter to force the GPO to be created if it does not already exist in the domain.
        You must specify either the TargetGuid parameter or the TargetName parameter.
    .PARAMETER MigrationTable
        Specifies the path to a migration table file. You can use a migration table to map security principals and UNC paths across domains.
    .PARAMETER CreateIfNeeded
        Indicates that the cmdlet creates a GPO from the backup if the specified target GPO does not exist.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Import-GPO` cmdlet, this is the domain into which you want to import the GPO.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user, or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    #>
    
    [CmdletBinding(DefaultParameterSetName='ImportGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216708')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Invoke-GPUpdate {
    <#
    .SYNOPSIS
        Schedules a remote Group Policy refresh on the specified computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the `*-Job` cmdlets.
        To get the job results, use the Receive-Job (https://go.microsoft.com/fwlink/?LinkID=113372)cmdlet. For more information about Windows PowerShell® background jobs, see about_Jobs (https://go.microsoft.com/fwlink/?LinkID=113251).
    .PARAMETER Boot
        Indicates that the cmdlet restarts the computer after the Group Policy settings are applied. This is required for those Group Policy client side extensions (CSEs) that do not process Group Policy on a background update cycle, but do process Group Policy at computer startup, for instance, per-computer Software Installation policy settings.
        This parameter has no effect if there are no CSEs called that require a restart.
    .PARAMETER Computer
        Specifies the name of the computer for which this cmdlet schedules a Group Policy refresh. You can specify the computer name in one of the following formats:
        - Full computer name (FQDN computer name); for example, `computer-01.sales.contoso.com`.
        - Fully qualified domain name (FQDN)\computer name; for example, `sales.contoso.com\computer-01`.
        - NetBIOS domain name\computer name; for example, `sales\computer-01`.
        - Computer name (host name): for example, `computer-01`.
        If the computer name is not specified, the computer in which this cmdlet is run will have its Group Policy settings refreshed.
    .PARAMETER RandomDelayInMinutes
        Specifies the delay, in minutes, that Task Scheduler waits, with a random factor added to lower the network load, before running a scheduled Group Policy refresh.
        You can specify a delay in from 0 minutes to a maximum of 44640 minutes (31 days):
        - A value of 0 causes the Group Policy refresh to run as soon as the gpupdate task has been   scheduled.
        - A value in the range of 1 minute to the maximum value of 44640 minutes cause the Group Policy refresh to delay the specified number of minutes plus a random offset before starting the Group Policy refresh.
    .PARAMETER Force
        Forces the command to run without asking for user confirmation.
    .PARAMETER LogOff
        Indicates that the cmdlet logs off the current user after the policy settings have been updated. This is required for those Group Policy client-side extensions (CSEs) that do not process Group Policy on a background update cycle but do process Group Policy when a user logs on. Examples include per-user Software Installation policy settings and the Folder Redirection extension.
        This parameter has no effect if there are no CSEs called that require a logoff.
    .PARAMETER Target
        Specifies that only the user or computer policy settings are refreshed. By default, both user and computer policy settings are refreshed.
        The acceptable values for this parameter are:
        - User
        - Computer
        If the Target parameter is not specified both user and computer policy settings are refreshed.
    .PARAMETER Sync
        Indicates that the cmdlet processes the next foreground Group Policy application to be done synchronously. Foreground Group Policy applications occur at computer startup and user logon. You can specify this for the user, computer or both using the Target parameter.
        On a client computer, by default, Group Policy processes synchronously at computer startup and asynchronously at user logon.
        On a server, by default, Group Policy processes synchronously at computer startup and at user logon.
    #>
    
    [CmdletBinding(DefaultParameterSetName='NonSyncSet', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216709')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function New-GPLink {
    <#
    .SYNOPSIS
        Links a GPO to a site, domain, or OU.
    .PARAMETER Guid
        Specifies the GPO to link by its globally unique identifier (GUID). The GUID uniquely identifies the GPO in the domain.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Name
        Specifies the GPO to link by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain, an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Target
        Specifies the LDAP distinguished name of the site, domain, or OU to which to link the GPO. For example, for the `MyOU` organizational unit in the `contoso.com` domain, the LDAP distinguished name is `ou=MyOU,dc=contoso,dc=com`.
    .PARAMETER LinkEnabled
        Specifies whether the GPO link is enabled.
        The acceptable values for this parameter are: Yes or No.
        By default, Group Policy processing is enabled for all GPO links. You can completely block the application of a GPO for a specific site, domain, or OU by disabling the GPO link for that site, domain, or OU. Disabling a GPO link does not disable the GPO itself. If the GPO is linked to other sites, domains, or OUs, Group Policy continues to process the GPO for each link that is enabled.
    .PARAMETER Order
        Specifies the link order for the GPO link. You can specify a number that is between one and the current number of GPO links to the target site, domain, or OU, plus one.
        The link order specifies the order of precedence with which GPOs linked to the same Active Directory container are applied. When Group Policy is processed, GPOs with a higher link order number are processed before GPOs with a lower link order number. Therefore, when two GPOs contain conflicting settings, the settings in the GPO with the lower link order number, because it is processed last, overwrites those of the GPO with the higher link order number. A lower number indicates higher precedence.
        By default, the GPO link is added at the lowest precedence with a link order equal to the number of GPO links to the container, plus one. Link order is a dynamic value because the value may change as GPO links are added and deleted from the container. You can change the link order of a GPO link with the `Set-GPLink` cmdlet.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `New-GPLink` cmdlet:
        - The GPO to link from must exist in this domain.
        - The Active Directory container to link to must exist in a domain that has a trust relationship   with this domain.
        To specify a domain to link to, use the Target parameter.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user, or the computer.
        You can also refer to Domain by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the FQDN or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Enforced
        Specifies whether the GPO link is enforced. You can specify Yes or No. By default, GPO links are not enforced.
        By setting the GPO link to enforced, you ensure the following:
        - That the settings of the GPO cannot be blocked (by blocking inheritance) at a lower-level Active   Directory container. - That the settings of the GPO always take precedence over conflicting settings in GPOs that are   linked to lower-level containers.
        This option should be used sparingly. Casual use of this option complicates troubleshooting.
    #>
    
    [CmdletBinding(DefaultParameterSetName='LinkbyGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216710')]
    param (
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
        
        [Microsoft.GroupPolicy.EnableLink]
        ${LinkEnabled},
        
        [int]
        ${Order},
        
        [Alias('DomainName')]
        [string]
        ${Domain},
        
        [Alias('DC')]
        [string]
        ${Server},
        
        [Microsoft.GroupPolicy.EnforceLink]
        ${Enforced}
    )
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function New-GPO {
    <#
    .SYNOPSIS
        Creates a GPO.
    .PARAMETER Name
        Specifies a display name for the new GPO.
        If another GPO with the same display name exists in the domain an error occurs.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER StarterGpoGuid
        Specifies a Starter GPO by its globally unique identifier (GUID). The GUID uniquely identifies the Starter GPO. If a Starter GPO is specified, the GPO is created with its settings.
        You can also refer to the StarterGpoGuid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER StarterGpoName
        Specifies a Starter GPO by its display name. The name can contain 255 characters. If the name includes blank characters, enclose the name in double-quotation marks or single-quotation marks. If a Starter GPO is specified, the GPO is created with its settings.
        The display name is not guaranteed to be unique in the domain. If another Starter GPO with the same display name exists in the domain, an error occurs. You can use the StarterGpoGuid parameter to uniquely identify a Starter GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Comment
        Includes a comment for the new GPO. The comment string must be enclosed in double- or single-quotation marks and can contain 2,047 characters.
        Use the comment to document the GPO and its implementation in your environment. Or, if you insert keywords in the comment, you can use the keyword filter to find GPOs that have matching keywords.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `New-GPO` cmdlet:
        - The new GPO is created in this domain.
        - If a Starter GPO is specified, it must exist in this domain.
        If you do not specify the Domain parameter, then the domain of the user running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full help.
        If you specify a domain that is different from the domain of the user running the current session (or the computer for a startup or shutdown script), then a trust must exist between that domain and the domain of the user, or computer.
        You can also refer to the Domain by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    #>
    
    [CmdletBinding(DefaultParameterSetName='New', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216711')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function New-GPStarterGPO {
    <#
    .SYNOPSIS
        Creates a Starter GPO.
    .PARAMETER Name
        Specifies the display name for the new Starter GPO.
        If another Starter GPO with the same display name exists in the domain, an error occurs.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Comment
        Specifies a comment for the new Starter GPO. The comment string must be enclosed in double-quotation marks or single-quotation marks and can contain a maximum of 2,047 characters.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        Cross-domain creation of Starter GPOs is not supported. If you specify a domain that is different from the domain of the user that is running the current session, an error occurs.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216712')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Remove-GPLink {
    <#
    .SYNOPSIS
        Removes a GPO link from a site, domain or OU.
    .PARAMETER Guid
        Specifies the GPO for which to remove the link by its globally unique identifier (GUID). The `GUID` uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in aliases, id and gpoid . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Name
        Specifies the GPO for which to remove the link by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Target
        Specifies the Lightweight Directory Access Protocol (LDAP) distinguished name of the site, domain, or OU from which to remove the link. For instance, for the `MyOU` organizational unit in the `contoso.com` domain, the LDAP distinguished name is `ou=MyOU,dc=contoso,dc=com`.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Remove-GPLink` cmdlet:
        - The GPO that is linked must exist in this domain.
        - The Active Directory container (site, domain, or OU) that is linked must exist in a domain that   has a trust relationship with this domain.
        Note: To specify a domain to link to, use the Target parameter.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user, or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    #>
    
    [CmdletBinding(DefaultParameterSetName='LinkbyGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216713')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Remove-GPO {
    <#
    .SYNOPSIS
        Removes a GPO.
    .PARAMETER Guid
        Specifies the GPO to remove by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Name
        Specifies the GPO that this cmdlet removes by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Domain
        Specifies the domain in which you want to remove a GPO. You must specify the fully qualified domain name (FQDN) of the domain.
        If you do not specify the Domain parameter, the domain of the computer that you are logged on to is used.
        If you specify a domain that differs from the domain of your user object, a trust must exist between the domain from which you want to remove the GPO and the domain of your user object.
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER KeepLinks
        Indicates that the cmdlet preserves the links to the GPO in the specified domain, including OUs, and all sites when the GPO is removed.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216714')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Remove-GPPrefRegistryValue {
    <#
    .SYNOPSIS
        Removes one or more Registry preference items from either Computer Configuration or User Configuration in a GPO.
    .PARAMETER Guid
        Specifies the GPO from which to remove the Registry preference item by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO from which to remove the Registry preference item by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER Context
        Specifies whether the Registry preference item (or items) are removed from Computer Configuration or User Configuration in the specified GPO. You must specify either User or Computer.
    .PARAMETER Key
        Specifies a registry key for which to remove one or more Registry preference items; for instance, HKCU\Control Panel\Colors.
        You can specify any of the following registry hives: `HKEY_CLASSES_ROOT` (HKCR), `HKEY_CURRENT_USER` (HKCU), `HKEY_LOCAL_MACHINE` (HKLM), `HKEY_USERS` (HKU), and `HKEY_CURRENT_CONFIG` (HKCC). Any of these hives can be specified for Registry preference items in both Computer Configuration and User Configuration.
        The Key parameter can be specified with or without the ValueName parameter:
        - If the ValueName parameter is specified, all Registry preference items that configure the   registry value are removed.
        - If the ValueName parameter is not specified, all Registry preference items that configure the   registry key and any of its first-level values are removed.
        You can also refer to the Key parameter by its built-in alias, FullKeyPath.
    .PARAMETER ValueName
        Specifies the name of a registry value for which to remove all Registry preference items. If you specify the ValueName parameter, you must also specify the Key parameter.
    .PARAMETER Order
        Specifies the order in which a Registry preference item is processed relative to other Registry preference items in the GPO when the GPO is applied on a client computer.
    .PARAMETER Domain
        Specifies the domain for which this cmdlet runs the operation. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Remove-GPPrefRegistryValue` cmdlet, the GPO from which to remove the Registry preference item or items must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. (If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used.) For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session, a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    #>
    
    [CmdletBinding(DefaultParameterSetName='GetByGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216715')]
    param (
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
        [Microsoft.GroupPolicy.Commands.GpoConfiguration]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Remove-GPRegistryValue {
    <#
    .SYNOPSIS
        Removes one or more registry-based policy settings from either Computer Configuration or User Configuration in a GPO.
    .PARAMETER Guid
        Specifies the GPO from which to remove the registry-based policy setting by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO from which to remove the registry-based policy setting by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER Key
        Specifies a registry key for which to remove one or more registry-based policy settings (for instance: `HKLM\Software\Policies\Microsoft\WindowsNT\DNSClient\UseDomainNameDevolution`).
        The key must be in one of the two following registry hives:
        - `HKEY_LOCAL_MACHINE` (HKLM) for a registry-based policy setting in Computer Configuration.
        - `HKEY_CURRENT_USER` (HKCU) for a registry-based policy setting in User Configuration.
        The Key parameter can be specified with or without the ValueName parameter:
        - If the ValueName parameter is specified, the registry-based policy setting that configures   that registry value is removed.
        - If the ValueName parameter is not specified, all registry-based policy settings that configure   any of the first-level values of the registry key are removed. If there are registry-based policy   settings that configure any subkeys or their values, an error occurs.
        You can also refer to the Key parameter by its built-in alias, FullKeyPath.
    .PARAMETER ValueName
        Specifies the name of the registry value for which to remove the registry-based policy setting. If you specify the ValueName parameter, you must also specify the Key parameter.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Remove-GPRegistryValue` cmdlet, the GPO from which to remove the registry-based policy setting must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    #>
    
    [CmdletBinding(DefaultParameterSetName='GetByGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216716')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Rename-GPO {
    <#
    .SYNOPSIS
        Assigns a new display name to a GPO.
    .PARAMETER Guid
        Specifies the GPO to rename by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO to rename by its current display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain, an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER TargetName
        Specifies the new display name of the GPO. Because the display name may not be unique, an error is returned if another GPO in the domain has the same display name.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Rename-GPO` cmdlet, this is the domain of the GPO that you want to rename.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    #>
    
    [CmdletBinding(DefaultParameterSetName='RenameByGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216717')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Restore-GPO {
    <#
    .SYNOPSIS
        Restores one GPO or all GPOs in a domain from one or more GPO backup files.
    .PARAMETER BackupId
        Specifies the backup ID of a GPO backup. The backup ID is a globally unique identifier (GUID) that uniquely identifies the backup. You can use this parameter to specify a particular version of a backed-up GPO in the backup directory.
        The backup ID is different from the ID of the GPO that was backed up (specified by the Guid parameter), you can find the backup ID in the backup directory.
    .PARAMETER Guid
        Specifies the GPO to restore by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        The GPO is restored from its most recent backup in the backup directory. To specify a different backup than the most recent backup, use the BackupID parameter.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO to restore by its display name. The GPO is restored from its most recent backup in the backup directory. To specify a different backup than the most recent backup, use the BackupId parameter.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER Path
        Specifies the path to the backup directory.
        You can also refer to the Path parameter by its built-in alias, BackupLocation .
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Restore-GPO` cmdlet, this is the domain in which you want to restore the GPO. This must be the domain from which the GPO was backed up.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    .PARAMETER All
        Indicates that the cmdlet restores all GPOs in the domain that have backups in the backup directory. Each GPO is restored from its most recent backup in the directory.
    #>
    
    [CmdletBinding(DefaultParameterSetName='RestoreFromBackupId', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216718')]
    param (
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Set-GPInheritance {
    <#
    .SYNOPSIS
        Blocks or unblocks inheritance for a specified domain or organizational unit.
    .PARAMETER Target
        Specifies the domain or the OU for which to block or unblock inheritance by its LDAP distinguished name. For instance, the `MyOU` organizational unit in the `contoso.com` domain is specified as `ou=MyOU,dc=contoso,dc=com`.
        You can also refer to the Target parameter by its built-in alias, Path .
    .PARAMETER IsBlocked
        Indicates whether to block inheritance for the domain or OU. You must specify `Yes` or `No`.
        The following values are permitted for this object type.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Set-GPInheritance` cmdlet, this is typically the domain of the Active Directory container (domain or OU) for which you want to block or unblock inheritance. If the domain for the cmdlet is different than the domain of the container, a trust must exist between the two domains.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216719')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('path')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Target},
        
        [Parameter(Mandatory=$true)]
        [Microsoft.GroupPolicy.Commands.BlockInheritance]
        ${IsBlocked},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('DomainName')]
        [string]
        ${Domain},
        
        [Alias('DC')]
        [string]
        ${Server}
    )
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Set-GPLink {
    <#
    .SYNOPSIS
        Sets the properties of the specified GPO link.
    .PARAMETER Guid
        Specifies the GPO of the link by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO of the link by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain, an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER Target
        Specifies the Lightweight Directory Access Protocol (LDAP) distinguished name of the site, domain, or OU of the link. For instance, for the `MyOU` organizational unit in the `contoso.com` domain, the LDAP distinguished name is `ou=MyOU,dc=contoso,dc=com`.
    .PARAMETER LinkEnabled
        Specifies whether the GPO link is enabled. You can specify Yes or No.
        By default, Group Policy processing is enabled for all GPO links. You can completely block the application of a GPO for a specific site, domain, or OU by disabling the GPO link for that site, domain, or OU. Disabling a GPO link does not disable the GPO itself. If the GPO is linked to other sites, domains, or OUs, Group Policy continues to process the GPO for each link that is enabled.
    .PARAMETER Order
        Specifies the link order for the GPO link. You can specify a number that is between one and the current number of GPO links to the target site, domain, or OU, plus one.
        The link order specifies the order of precedence with which GPOs linked to the same Active Directory container are applied. When Group Policy is processed, GPOs with a higher link order number are processed before GPOs with a lower link order number. Therefore, when two GPOs contain conflicting settings, the settings in the GPO with the lower link order number, because it is processed last, overwrites those of the GPO with the higher link order number. A lower number indicates higher precedence.
        By default, the GPO link is added at the lowest precedence (with a link order equal to the number of GPO links to the container, plus one). Link order is a dynamic value because the value may change as GPO links are added and deleted from the container.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the Set-GPLink cmdlet:
        - The GPO that is linked from must exist in this domain.
        - The Active Directory container that is linked to must exist in a domain that has a trust   relationship with this domain.
        To specify a domain to link to, use the Target parameter.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    .PARAMETER Enforced
        Specifies whether the GPO link is enforced. You can specify Yes or No. By default, GPO links are not enforced.
        By setting the GPO link to enforced, you ensure the following:
        - That the settings of the GPO cannot be blocked (by blocking inheritance) at a lower-level Active   Directory container.
        - That the settings of the GPO always take precedence over conflicting settings in GPOs that are   linked to lower-level containers.
        This option should be used sparingly. Casual use of this option complicates troubleshooting.
        The following values are permitted for this object type.
    #>
    
    [CmdletBinding(DefaultParameterSetName='LinkGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216720')]
    param (
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
        [Microsoft.GroupPolicy.EnableLink]
        ${LinkEnabled},
        
        [int]
        ${Order},
        
        [Alias('DomainName')]
        [string]
        ${Domain},
        
        [Alias('DC')]
        [string]
        ${Server},
        
        [Microsoft.GroupPolicy.EnforceLink]
        ${Enforced}
    )
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Set-GPPermission {
    <#
    .SYNOPSIS
        Grants a level of permissions to a security principal for one GPO or all the GPOs in a domain.
    .PARAMETER Guid
        Specifies the GPO for which to set the permission level by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO for which to set the permission level by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain, an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER PermissionLevel
        Specifies the permission level to set for the security principal.
        The acceptable values for this parameter are:
        - GpoRead
        - GpoApply
        - GpoEdit
        - GpoEditDeleteModifySecurity
        - None
    .PARAMETER TargetName
        The name of the security principal for which to set the permission level. You can specify a user, a security group, or a computer. You can use either the domain-qualified name of the security principal (domain\account) or just its name.
        For instance, in the `contoso.com` domain, to specify:
        - The user SomeUser, use `contoso\SomeUser` or `SomeUser`.
        - The Domain Admins security group, use `contoso\Domain Admins` or `Domain Admins`.
        - The computer computer-01, use `contoso\computer-01` or `computer-01`.
    .PARAMETER TargetType
        The type of security principal for which to set the permission level. You must specify User, Group, or Computer.
        The acceptable values for this parameter are:
        - Computer
        - User
        - Group
    .PARAMETER DomainName
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Set-GPPermission` cmdlet, the GPO for which to get the permission level must exist in this domain.
        If you do not specify the DomainName parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the DomainName parameter by its built-in alias, domain. For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    .PARAMETER All
        Specifies that the permission level is set for the specified security principal for all GPOs in the domain.
    .PARAMETER Replace
        Specifies that the existing permission level for the group or user is removed before the new permission level is set. If a security principal is already granted a permission level that is higher than the specified permission level and you do not use the Replace parameter, no change is made.
    #>
    
    [CmdletBinding(DefaultParameterSetName='PermissionOne(GUID)', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216721')]
    param (
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
        [Microsoft.GroupPolicy.GPPermissionType]
        ${PermissionLevel},
        
        [Parameter(Mandatory=$true)]
        [string]
        ${TargetName},
        
        [Parameter(Mandatory=$true)]
        [Microsoft.GroupPolicy.Commands.PermissionTrusteeType]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Set-GPPrefRegistryValue {
    <#
    .SYNOPSIS
        Configures a Registry preference item under either Computer Configuration or User Configuration in a GPO.
    .PARAMETER Guid
        Specifies the GPO in which to configure the Registry preference item by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO in which to configure the Registry preference item by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain, an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER Context
        Specifies whether the Registry preference item is configured under User Configuration or Computer Configuration in the GPO. The acceptable values for this parameter are: `User` or `Computer`.
    .PARAMETER Key
        Specifies the registry key for the Registry preference item; for instance: `HKEY_CURRENT_USER\Control Panel\Colors`.
        You can specify any of the following registry hives: `HKEY_CLASSES_ROOT` (HKCR), `HKEY_CURRENT_USER` (HKCU), `HKEY_LOCAL_MACHINE` (HKLM), `HKEY_USERS` (HKU), and `HKEY_CURRENT_CONFIG` (HKCC). Any of these hives can be specified for Registry preference items in both Computer Configuration and User Configuration.
        You can configure a preference registry setting for a registry key or a registry value.
        - To configure a setting for a registry key, specify the Key parameter without the ValueName , Value , or Type parameters.
        - To configure a setting for a registry value, specify the Key parameter together with the ValueName , Value , and Type parameters.
    .PARAMETER ValueName
        Specifies the value name of the registry value for the Registry preference item. For instance, the registry key `HKEY_CURRENT_USER\Control Panel\Colors` can have a value with the following name: `ActiveTitle`. For the default value of a registry key, specify either `(default)` or an empty string `""`.
        When you configure a Registry preference item for a registry key, do not specify this parameter. When you configure a Registry preference item for a registry value, specify this parameter together with the Key , Value , and Type parameters.
    .PARAMETER Value
        Specifies the value data of the registry value for the Registry preference item. For instance, the registry value `HKEY_CURRENT_USER\Control Panel\Colors ActiveTitle` can have the following (value) `data: 10 36 106`.
        When you configure a Registry preference item for a registry key, do not specify this parameter. When you configure a Registry preference item for a registry value, specify this parameter together with the Key , ValueName , and Type parameters.
    .PARAMETER Type
        Specifies the data type of the registry value for the Registry preference item.
        The acceptable values for this parameter are:
        - String
        - ExpandString
        - Binary
        - DWord
        - MultiString
        - ExpandString
        - Qword
        For more information about these data types, see Microsoft.Win32.RegistryValueKind Enumeration (https://go.microsoft.com/fwlink/?LinkID=143266)in the MSDN library.
        When you configure a Registry preference item for a registry key, do not specify this parameter. When you configure a Registry preference item for a registry value, specify this parameter together with the Key , ValueName , and Value parameters.
    .PARAMETER Action
        Specifies the action for the Registry preference item.
        The acceptable values for this parameter are:
        - Create
        - Update
        - Replace
        - Delete
        The action specifies how the Registry preference item is applied to the registry key or registry value on the client when Group Policy is processed.
    .PARAMETER Order
        Specifies the order in which the Registry preference item is processed relative to other Registry preference items in the GPO when the GPO is applied on a client computer. If two Registry preference items in the GPO change the same registry value, the one that has the highest order is the last to modify the value on the client.
        By default, if the Order parameter is not specified, the order is set to one plus the current number of Registry preference items in the GPO. You can specify any value greater than zero. If you specify a value larger than the default value, the order is set to the default.
        The order of a setting can change as Registry preference items are added or removed from the GPO. For instance, if the GPO has five Registry preference items, and you add another one and specify an order of `4`, the Registry preference items that previously were at order `4` and `5`, are at order `5` and `6` after the change.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Set-GPPrefRegistryValue` cmdlet, the GPO for which to configure the Registry preference item must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    .PARAMETER Disable
        Indicates that the cmdlet configures the Registry preference item as disabled. A disabled Registry preference item is not applied when Group Policy is processed on the client, and, therefore, does not modify any existing registry keys or values on the client.
        This parameter does not disable an existing Registry preference item in the GPO, rather, it creates a new Registry preference item that is disabled. Any existing Registry preference items that configure the same key or value will still be applied when the GPO is processed on a client. This behavior is different than disabling an existing Registry preference item using the GPMC.
        You can use the `Remove-GPPrefRegistryValue` cmdlet to remove any existing Registry preference items associated with the specified key or value from the appropriate configuration (User or Computer) in the GPO before you create the new disabled Registry preference item. This ensures that after you create the disabled Registry preference item, it will be the only Registry preference item associated with the key or value in the specified configuration in the GPO.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216722')]
    param (
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
        [Microsoft.GroupPolicy.Commands.GpoConfiguration]
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
        [Microsoft.Win32.RegistryValueKind]
        ${Type},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.GroupPolicy.PreferenceAction]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

function Set-GPRegistryValue {
    <#
    .SYNOPSIS
        Configures one or more registry-based policy settings under either Computer Configuration or User Configuration in a GPO.
    .PARAMETER Guid
        Specifies the GPO in which to configure the registry-based policy setting by its globally unique identifier (GUID). The GUID uniquely identifies the GPO.
        You can also refer to the Guid parameter by its built-in alias, Id .
    .PARAMETER Name
        Specifies the GPO in which to configure the registry-based policy setting by its display name.
        The display name is not guaranteed to be unique in the domain. If another GPO with the same display name exists in the domain, an error occurs. You can use the Guid parameter to uniquely identify a GPO.
        You can also refer to the Name parameter by its built-in alias, DisplayName .
    .PARAMETER Key
        Specifies the registry key for the registry-based policy setting; for instance, `HKLM\Software\Policies\Microsoft\Windows NT\DNSClient`.
        The key must be in one of the two following registry hives:
        - `HKEY_LOCAL_MACHINE` (HKLM) for a registry-based policy setting in Computer Configuration.
        - `HKEY_CURRENT_USER` (HKCU) for a registry-based policy setting in User Configuration.
        You can also refer to the Key parameter by its built-in alias, FullKeyPath.
    .PARAMETER ValueName
        Specifies a value name or an array of value names for the registry-based policy setting. For instance, the registry key `HKLM\Software\Policies\Microsoft\Windows NT\DNSClient` can have a registry value with the following value name: `UseDomainNameDevolution`. Use a comma-separated list to specify more than one value name. Only the `String` and `ExpandString` data types are supported for an array of values.
        You cannot specify this parameter with the ValuePrefix parameter.
    .PARAMETER Value
        Specifies the value data for the registry-based policy setting. You can specify a single value or an array of values. Use a comma-separated list to specify more than one value. Only the `String` and `ExpandString` data types are supported for an array of values.
        At a minimum, you must specify this parameter together with the Type and Key parameters to configure a policy setting to set a registry value. You cannot specify this parameter with the Disable parameter.
    .PARAMETER Type
        Specifies the data type for the registry-based policy setting.
        The acceptable values for this parameter are:
        - String
        - ExpandString
        - Binary
        - DWord
        - MultiString
        - QWord
        For more information about these data types, see Microsoft.Win32.RegistryValueKind Enumeration (https://go.microsoft.com/fwlink/?LinkID=143266)in the MSDN library.
        Only the following data types are supported for list values: `String` and `ExpandString`.
        You must specify this parameter when you configure a policy setting to set a registry value. You cannot specify this parameter with the Disable parameter.
        The following values are permitted for this object type.
    .PARAMETER Domain
        Specifies the domain for this cmdlet. You must specify the fully qualified domain name (FQDN) of the domain.
        For the `Set-GPRegistryValue` cmdlet, the GPO in which to configure the registry-based policy setting must exist in this domain.
        If you do not specify the Domain parameter, the domain of the user that is running the current session is used. If the cmdlet is being run from a computer startup or shutdown script, the domain of the computer is used. For more information, see the Notes section in the full Help.
        If you specify a domain that is different from the domain of the user that is running the current session (or, for a startup or shutdown script, the computer), a trust must exist between that domain and the domain of the user or the computer.
        You can also refer to the Domain parameter by its built-in alias, DomainName . For more information, see about_Aliases (/powershell/module/microsoft.powershell.core/about/about_aliases).
    .PARAMETER Server
        Specifies the name of the domain controller that this cmdlet contacts to complete the operation. You can specify either the fully qualified domain name (FQDN) or the host name.
        If you do not specify the name by using the Server parameter, the primary domain controller (PDC) emulator is contacted.
        You can also refer to the Server parameter by its built-in alias, DC .
    .PARAMETER Additive
        Indicates that registry values should be appended to existing values under the key when the GPO is applied on a client.
        By default, when Group Policy is processed on a client, existing values under a registry key are deleted before any new values are written to the registry. By using the Additive parameter for a registry-based policy setting, you can specify that the new value should be added to the registry key without deleting the existing values.
        You cannot specify the Disable parameter with this parameter.
    .PARAMETER Disable
        Indicates that the cmdlet disables the registry-based policy setting.
        You can disable a policy setting for a registry key or value:
        - For a registry key, specify the Key parameter without the ValueName parameter. When the GPO   is applied on the client, all of the values directly under the key are removed from the registry.   The key itself is not removed from the registry, nor are any of its subkeys, or their values,   removed.
        - For a registry value, specify the Key parameter together with the ValueName parameter.   When the GPO is applied on the client, only the specified value is removed from the registry.
        To remove a policy setting from a GPO without affecting existing registry keys or values on a client when Group Policy is processed, use the `Remove-GPRegistryValue` cmdlet.
        You cannot specify the Additive , Type , Value , or ValuePrefix parameters with the Disable parameter.
    .PARAMETER ValuePrefix
        Specifies a value name prefix for a registry-based policy setting for a list of registry values.
        Configures a policy setting that creates the following registry values when Group Policy is applied on the client:
        `HKLM\SOFTWARE\Policies\ExampleKey ExValue1` `100`
        `HKLM\SOFTWARE\Policies\ExampleKey ExValue2` `200`
        `HKLM\SOFTWARE\Policies\ExampleKey ExValue3` `300`
        Only the `String` and `ExpandString` data types are supported with the ValuePrefix parameter.
        You cannot specify this parameter with the ValueName parameter or the Disable parameter.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByGUID', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='https://go.microsoft.com/fwlink/?LinkId=216176')]
    param (
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
        [Microsoft.Win32.RegistryValueKind]
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
    end {
        throw '{0}: StubNotImplemented' -f $MyInvocation.MyCommand
    }
}

