
using module GpoDsc

InModuleScope -ModuleName GpoDsc { 
    Describe "JHP_GPImport" -Tag "Unit" {
        Describe "Get" {
            Context 'GPO exists already' {
                BeforeEach {
                    $tester = [GPImport]@{
                        BackupGpo      = 'The exported Backup'
                        TargetGpo      = 'The Target GPO'
                        MigrationTable = '\\SomeShare\MigrationTable.xml'
                        DomainName     = 'contoso.local'
                    }

                    Mock -CommandName Sync-Parameter -MockWith { @{DomainName = 'contoso.local' } }
                    Mock -CommandName Get-NextClosestDomainController -MockWith { 'DC01' }
                    Mock -CommandName Get-GPO -MockWith { @{DisplayName = 'The Target GPO' } }
                    Mock -CommandName Resolve-Path -MockWith { @{Path = 'SomePath' } }
                    Mock -CommandName Get-ADDomainController -MockWith { 'DC01' }
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
                    $tester = [GPImport]@{
                            BackupGpo      = 'The exported Backup'
                            TargetGpo      = 'The Target GPO'
                            MigrationTable = '\\SomeShare\MigrationTable.xml'
                            DomainName     = 'contoso.local'
                        }

                    Mock -CommandName Sync-Parameter -MockWith { @{DomainName = 'contoso.local' } }
                    Mock -CommandName Get-NextClosestDomainController -MockWith { 'DC01' }
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
                    $tester = [GPImport]@{
                            BackupGpo      = 'The exported Backup'
                            TargetGpo      = 'The Target GPO'
                            MigrationTable = '\\SomeShare\MigrationTable.xml'
                            DomainName     = 'contoso.local'
                        }

                    Mock -CommandName Sync-Parameter -MockWith { @{DomainName = 'contoso.local' } }
                    Mock -CommandName Get-NextClosestDomainController -MockWith { 'DC01' }
                    Mock -CommandName Get-GPO -MockWith { }
                    Mock -CommandName Resolve-Path -MockWith {}
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
}
