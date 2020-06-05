#!/bin/bash

# Start the image build
az resource invoke-action \
     --resource-group ${IMAGERESORUCEGROUP} \
     --resource-type  Microsoft.VirtualMachineImages/imageTemplates \
     -n 01-image-template-win-10-desktop \
     --action Run