# $PSVersionTable.PSVersion

# Install-Module -Name Az -AllowClobber

# Register-AzResourceProvider -ProviderNameSpace 'Microsoft.PolicyInsights'

$definition = New-AzPolicyDefinition `
  -Name "enforce-tag-value" `
  -DisplayName "Enforce tag and its value" `
  -description "Enforces a required tag and its value." `
  -Policy 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/built-in-policy/enforce-tag-value/azurepolicy.rules.json' `
  -Parameter 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/built-in-policy/enforce-tag-value/azurepolicy.parameters.json' `
  -Mode All

$assignment = New-AzPolicyAssignment `
  -Name 'azsjdassign' `
  -Scope '/subscriptions/fb73aa7a-074b-49f0-a865-d2207199f325' `
  -tagName 'billingcode' `
  -tagvalue 'az101-9009' `
  -PolicyDefinition $definition