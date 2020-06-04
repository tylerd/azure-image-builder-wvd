#!/bin/bash

echo '1 - '${{ variables.image_resource_group }} # one
echo '2 - '$(imageResourceGroup) # two
echo '3 - '$image_resource_group # three
echo '4 - '($(image_resource_group)) # three

# Create the image template
az resource create --verbose \
    --resource-group ($(image_resource_group)) \
    --properties @helloImageTemplateWin.json \
    --is-full-object \
    --resource-type Microsoft.VirtualMachineImages/imageTemplates \
    -n helloImageTemplateWin10Desktop01