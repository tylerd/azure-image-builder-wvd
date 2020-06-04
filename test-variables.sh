#!/bin/bash
echo $imageresourcegroup
echo '1 - ' ${{ variables.imageresourcegroup }} # one
echo '2 - ' $(imageresourcegroup) # two
echo '3 - ' $imageresourcegroup # three
echo '4 - ' $IMAGERESORUCEGROUP #four