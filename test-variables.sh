#!/bin/bash
printenv
echo '-----------------------------'
echo $1
echo 'Hello World!'
echo $IMAGERESORUCEGROUP #four
echo $imageresourcegroup
${{ variables.imageresourcegroup }}
echo '2 - ' $(imageresourcegroup) # two
echo '3 - ' $imageresourcegroup # three
echo '4 - ' $IMAGERESORUCEGROUP #four