#Requires -Modules Az.Storage
#Requires -Modules Az.Resources

$startTime = Get-Date
$expiryTime = $startTime.AddMinutes(30)
$StorageAccountRG = "Azureminilab-Lighthouse"
$StorageAccountName = "azminlandevops"
$RootContainer = "templates"
$folder = "arm-templates"

$MainTemplate = "main-template-kv.json"

$TargetResourceGroup = "aib-wvd-vmpool-rg"

Set-AzCurrentStorageAccount -ResourceGroupName $StorageAccountRG -Name $StorageAccountName

$token = New-AzStorageContainerSASToken -Name $RootContainer -ExpiryTime $expiryTime -Permission "r"

$templateUri = (Get-AzStorageBlob -Blob "$folder/$MainTemplate" -Container $RootContainer).ICloudBlob.Uri.AbsoluteUri

$secureToken = ConvertTo-SecureString -String $token -AsPlainText -Force

$ParamObject = @{
    'vault-name'                = 'azuredevopsazminlab';
    'vault-resourcegroup-name'  = 'Azureminilab-Lighthouse';
    'vault-subscription-id'     = $Env:SUBSCRIPTIONID;
    'artifactsLocationSasToken' = $secureToken
}

New-AzResourceGroupDeployment -ResourceGroupName $TargetResourceGroup `
    -TemplateUri "$templateUri$token" `
    -TemplateParameterObject $ParamObject -SkipTemplateParameterPrompt