#!/bin/bash
expiretime=$(date -u -d '30 minutes' +%Y-%m-%dT%H:%MZ)
storageAccountRG="Azureminilab-Lighthouse"
storageAccountName="azminlandevops"

token=$(az storage container generate-sas \
  --name templates \
  --expiry $expiretime \
  --permissions rw \
  --output tsv \
  --connection-string $connection)

  url=$(az storage blob url \
   --container-name arm-templates \
   --name main.json \
   --output tsv \
   --connection-string $connection)
 parameter='{"_artifactsLocationSasToken":{"value":"?'$token'"}}'
 az deployment group create --resource-group ExampleGroup --template-uri $url?$token --parameters $parameter