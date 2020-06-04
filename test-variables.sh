#!/bin/bash

echo '1 - '${{ variables.imageResourceGroup }} # one
echo '2 - '$(imageResourceGroup) # two
echo '3 - '$imageResourceGroup # three