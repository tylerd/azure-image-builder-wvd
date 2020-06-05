#!/bin/bash

# Create the image template
az resource create \
    --verbose \
    --resource-group ${IMAGERESORUCEGROUP} \
    --properties @image-template-win-10.json \
    --is-full-object \
    --resource-type Microsoft.VirtualMachineImages/imageTemplates \
    -n 01-image-template-win-10-desktop