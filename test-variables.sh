#!/bin/bash
printenv
echo '-----------------------------'
# echo $1
# echo 'Hello World!'
echo $IMAGERESOURCEGROUP
# echo $imageresourcegroup
# ${{ variables.imageresourcegroup }}
# echo '2 - ' $(imageresourcegroup) # two
# echo '3 - ' $imageresourcegroup # three
echo '4 - ' $IMAGERESORUCEGROUP #four
meee=$IMAGERESORUCEGROUP
az group show --name $meee

az group show --name "$IMAGERESORUCEGROUP"