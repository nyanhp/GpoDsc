
Describe "JHP_GPImport" -Tag "Unit" {
    Describe "Get" {
        Context 'GPO exists already' {
            BeforeEach {
                $tester = InModuleScope -ModuleName GpoDsc { [GPImport]@{
                        BackupGpo      = 'The exported Backup'
                        TargetGpo      = 'The Target GPO'
                        MigrationTable = '\\SomeShare\MigrationTable.xml'
                        DomainName     = 'contoso.local'
                    } }

                Mock -CommandName Sync-Parameter -MockWith { @{DomainName = 'contoso.local' } } -ModuleName GpoDsc
                Mock -CommandName Get-NextClosestDomainController -MockWith { 'DC01' } -ModuleName GpoDsc
                Mock -CommandName Get-GPO -MockWith { @{DisplayName = 'The Target GPO' } } -ModuleName GpoDsc
                Mock -CommandName Resolve-Path -MockWith { @{Path = 'SomePath' } } -ModuleName GpoDsc
                Mock -CommandName Get-ADDomainController -MockWith { 'DC01' } -ModuleName GpoDsc
            }
            
            It "Should return correct data" {
                $currentStatus = $tester.Get()
                $currentStatus.BackupGpo | Should -Be $tester.BackupGpo
                $currentStatus.TargetGpo | Should -Be $tester.TargetGpo
                $currentStatus.MigrationTable | Should -Be $tester.MigrationTable
                $currentStatus.DomainName | Should -Be $tester.DomainName
                $currentStatus.Reasons.Code | Should -Be 'GPImport:GPImport:GpoDoesNotExist'
            }
        }

        Context 'GPO does not exist yet' {
            BeforeEach {                
                $tester = InModuleScope -ModuleName GpoDsc { [GPImport]@{
                        BackupGpo      = 'The exported Backup'
                        TargetGpo      = 'The Target GPO'
                        MigrationTable = '\\SomeShare\MigrationTable.xml'
                        DomainName     = 'contoso.local'
                    } }

                Mock -CommandName Sync-Parameter -MockWith { @{DomainName = 'contoso.local' } }
                Mock -CommandName Get-NextClosestDomainController -MockWith { 'DC01' } -ModuleName GpoDsc
                Mock -CommandName Get-GPO -MockWith { }
                Mock -CommandName Resolve-Path -MockWith { @{Path = 'SomePath' } }
                Mock -CommandName Get-ADDomainController -MockWith { 'DC01' }
            }
            It "Should return correct data" {
                $currentStatus = $tester.Get()
                $currentStatus.BackupGpo | Should -Be $tester.BackupGpo
                $currentStatus.TargetGpo | Should -Be ''
                $currentStatus.MigrationTable | Should -Be $tester.MigrationTable
                $currentStatus.DomainName | Should -Be $tester.DomainName
                $currentStatus.Reasons | Should -BeNullOrEmpty
            }
        }

        Context 'Migration table missing' {
            BeforeEach {
                $tester = InModuleScope -ModuleName GpoDsc { [GPImport]@{
                        BackupGpo      = 'The exported Backup'
                        TargetGpo      = 'The Target GPO'
                        MigrationTable = '\\SomeShare\MigrationTable.xml'
                        DomainName     = 'contoso.local'
                    } }

                Mock -CommandName Sync-Parameter -MockWith { @{DomainName = 'contoso.local' } }
                Mock -CommandName Get-NextClosestDomainController -MockWith { 'DC01' } -ModuleName GpoDsc
                Mock -CommandName Get-GPO -MockWith { } -ModuleName GpoDsc
                Mock -CommandName Resolve-Path -MockWith {} -ModuleName GpoDsc
                Mock -CommandName Get-ADDomainController -MockWith { 'DC01' }
            }
            
            It "Should return correct data" {
                $currentStatus = $tester.Get()
                $currentStatus.BackupGpo | Should -Be $tester.BackupGpo
                $currentStatus.TargetGpo | Should -Be $tester.TargetGpo
                $currentStatus.MigrationTable | Should -Be ''
                $currentStatus.DomainName | Should -Be $tester.DomainName
                $currentStatus.Reasons.Code | Should -Be 'GPImport:GPImport:MigrationTableDoesNotExist'
            }
            
        }
    }
    Describe "Set" {
        
    }
    Describe "Test" {
        
    }
}
