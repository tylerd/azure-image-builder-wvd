#!/bin/bash

# Delete the image template
az resource delete \
    --resource-group ${IMAGERESORUCEGROUP} \
    --resource-type Microsoft.VirtualMachineImages/imageTemplates \
    -n 01-image-template-win-10-desktop