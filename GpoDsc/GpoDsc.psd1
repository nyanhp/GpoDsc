@{
	RootModule           = 'GpoDsc.psm1'
	ModuleVersion        = '1.0.0'	
	GUID                 = '822dcf38-da7c-40d1-9158-22ff5e236028'
	Author               = 'Jan-Hendrik Peters'
	CompanyName          = 'Jan-Hendrik Peters'
	Copyright            = 'Copyright (c) 2023 Jan-Hendrik Peters'
	Description          = 'This DSC resource module contains resources to configure Group Policy linking as well as Group Policy Registry Values and Registry Preference Values'
	PowerShellVersion    = '5.1'
	RequiredModules      = @(
		@{ ModuleName = 'PSFramework'; ModuleVersion = '1.7.270' }
		'AutomatedLab.Common'
	)
	FunctionsToExport    = ''
	DscResourcesToExport = @(
		'GPImport'
		'GPInheritance'
		'GPLink'
		'GPO'
		'GPRegistryPreferenceValue'
		'GPRegistryValue'
	)
	CmdletsToExport      = ''
	VariablesToExport    = ''
	AliasesToExport      = ''
	ModuleList           = @()
	FileList             = @()
	
	PrivateData          = @{
		PSData = @{
			Tags = @('DscResource', 'DSC', 'GPO', 'GroupPolicy')
			
			# A URL to the license for this module.
			LicenseUri = 'https://raw.githubusercontent.com/nyanhp/GpoDsc/main/LICENSE'
			
			# A URL to the main website for this project.
			ProjectUri = 'https://github.com/nyanhp/GpoDsc'
			
			# A URL to an icon representing this module.
			# IconUri = ''
			
			# ReleaseNotes of this module
			# ReleaseNotes = ''
			
		} # End of PSData hashtable
		
	} # End of PrivateData hashtable
}