#!/bin/bash
expiretime=$(date -u -d '30 minutes' +%Y-%m-%dT%H:%MZ)
storageAccountRG="Azureminilab-Lighthouse"
storageAccountName="azminlandevops"
rootcontainer="templates"
container="arm-templates"

connection=$(az storage account show-connection-string \
  --resource-group $storageAccountRG \
  --name $storageAccountName \
  --query connectionString)
token=$(az storage container generate-sas \
  --name $rootcontainer/$container \
  --expiry $expiretime \
  --permissions rw \
  --output tsv \
  --connection-string $connection)

  url=$(az storage blob url \
   --container-name $rootcontainer/$container \
   --name main.json \
   --output tsv \
   --connection-string $connection)
 parameter='{"_artifactsLocationSasToken":{"value":"?'$token'"}}'
 az deployment group create --resource-group ${SESSIONHOSTRESOURCEGROUPNAME} --template-uri $url?$token --parameters $parameter