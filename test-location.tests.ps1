Param(
    [string] $TemplatePath
)

$template = Get-Content -Path $TemplatePath | Out-String | ConvertFrom-Json


Describe 'Sample Pester Test of an ARM Template' {
    It 'Has a resource title of Microsoft.Network/virtualNetworks' {
        $template.resources[0].location | Should -Be 'centralus'
    }
}