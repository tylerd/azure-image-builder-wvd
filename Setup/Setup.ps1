[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $ResourceGroupName = "WVD-CACN-Core-Infra",
    [Parameter()]
    [string]
    $Location = "canadacentral",
    [Parameter()]
    [string]
    $VirtualNetworkName = "WVD-CACN-VNET01",
    [Parameter()]
    [string]
    $VNETAddress = "10.100.0.0",
    [Parameter()]
    [ValidateRange(1, 32)]
    [int]
    $VnetCidr = 22,
    [Parameter()]
    [ValidateRange(1, 32)]
    [int]
    $SubnetCidr = 25
)


$az = Get-AzContext

$SubscriptionId = $az.Subscription.Id

Write-Host "Current Subscription ID $SubscriptionId"

$rg = Get-AzResourceGroup -Name $ResourceGroupName -ErrorAction SilentlyContinue

if (!$rg) {
    Write-Host "Resource Group does not exist"
    $rg = New-AzResourceGroup -Name $ResourceGroupName -Location $Location
}

$vnet = $rg | Get-AzVirtualNetwork -Name $VirtualNetworkName -ErrorAction SilentlyContinue

if (!$vnet) {
    Write-Host "Virtual Network $VirtualNetworkName does not exist. Creating."
    $vnet = $rg | New-AzVirtualNetwork -Name $VirtualNetworkName -AddressPrefix "$VNETAddress/$VnetCidr"
}