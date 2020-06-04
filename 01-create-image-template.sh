#!/bin/bash

echo $(image_resource_group)

# Create the image template
az resource create --verbose \
    --resource-group echo $(image_resource_group) \
    --properties @helloImageTemplateWin.json \
    --is-full-object \
    --resource-type Microsoft.VirtualMachineImages/imageTemplates \
    -n helloImageTemplateWin10Desktop01