Param(
    [string] $TemplatePath
)

$template = Get-Content -Path $TemplatePath | Out-String | ConvertFrom-Json


Describe 'Security Team Tests' {
    It 'Has a resource location of eastus' {
        $template.resources[0].location | Should -Be 'eastus'
    }
}