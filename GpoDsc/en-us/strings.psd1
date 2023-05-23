@{
    'Verbose.GetClosestDc'                           = 'Retrieving closest writable domain controller "{0}".'
    'Verbose.SkipEmptyProperty'                      = '[{0}] Skipping empty property "{1}".'

    'Generic.ReasonCode'                             = "{0}:{0}:{1}"
    'Error.Generic.OrgUnitMissing'                   = '[{0}] Organizational Unit "{1}" did not exist when info was requested from "{2}".'
    'Error.Generic.GpoMissing'                       = '[GPO] GPO "{0}" did not exist when info was requested from "{1}".'

    # GPImport
    'Verbose.GPImport.SkipExistingGpo'               = '[GPImport] Skipping import because of existing GPO "{0}" ({1}). Please overwrite settings manually if desired.'
    'Error.GPImport.GpoDoesNotExist'                 = '[GPImport] Target GPO "{0}" does not exist yet and would be created during Set from the backup "{1}".'
    'Error.GPImport.MigrationTableDoesNotExist'      = '[GPImport] Migration table "{1}" does not exist.'
    'Error.GPImport.ExportDoesNotExist'              = '[GPImport] Export path "{1}" does not exist.'

    # GPInheritance
    'Error.GPInheritance.SettingMismatch'            = '[GPInheritance] Desired value for GPO Inheritance Blocking "{0}" Actual value "{1}"'

    # GPLink
    'Error.GPLink.NoGpo'                             = '[GPLink] GPO "{0}" did not exist when info was requested from "{1}".'
    'Error.GPLink.LinkMissing'                       = '[GPLink] GPO "{0}" is not linked to OU "{1}".'
    'Error.GPLink.WrongLinkOrder'                    = '[GPLink] GPO "{0}" is linked on OU "{1}" with order "{2}", should be "{3}"'
    'Error.GPLink.WrongEnforcement'                  = '[GPLink] GPO "{0}" is linked on OU "{1}", enforced "{2}", should be "{3}"'
    'Error.GPLink.WrongEnable'                       = '[GPLink] GPO "{0}" is linked on OU "{1}", enabled "{2}", should be "{3}"'
    'Verbose.GPLink.SettingGPLink'                   = '[GPLink] Linking GPO "{0}" to OU "{1}" with order "{2}", enforced "{3}", enabled "{4}", domain controller "{5}"'

    # GPO
    'Error.GPO.NoStarterGpo'                         = '[GPO] Starter GPO "{0}" did not exist when info was requested from "{1}".'
    'Error.GPO.TooMuchGpo'                           = '[GPO] GPO "{0}" did exist when info was requested from "{1}", but Ensure was set to Absent.'
    'Error.GPO.WrongDescription'                     = '[GPO] GPO "{0}" desired description "{1}" did not match actual description "{2}" when info was requested from "{3}".'
    'Verbose.GPO.Create'                             = '[GPO] Creating GPO "{0}" with description "{1}" from potential starter GPO "{2}" on domain controller "{3}"'

    # GPRegistryValue
    'Error.GPRegistryValue.InvalidParameters'        = '[GPRegistryValue] Disable is specified for GPO "{0}". You cannot also use Value, ValueName, ValuePrefix or Type.'
    'Error.GPRegistryValue.PrefixAndName'            = '[GPRegistryValue] ValuePrefix is specified for GPO "{0}". You cannot also use ValueName, as the prefix will generate a ValueName for each Value.'
    'Error.GPRegistryValue.ValuesMissing'            = '[GPRegistryValue] GPO "{0}" wrong values in "{2}". Found "{3}", expected "{4}" when info was requested from "{1}"'
    'Error.GPRegistryValue.NoValue'                  = '[GPRegistryValue] GPO "{0}" value {1} not found when info was requested from "{2}" but Ensure was set to Present'
    'Error.GPRegistryValue.TooMuchValue'             = '[GPRegistryValue] GPO "{0}" value {1} found when info was requested from "{2}" but Ensure was set to Absent'
    'Verbose.GPRegistryValue.SettingGPRegistryValue' = '[GPRegistryValue] Setting GPO "{0}" key "{1}" using "{2}"'
}