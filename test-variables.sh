#!/bin/bash

echo '1 - '${{ variables.image_resource_group }} # one
echo '2 - '$(image_resource_group) # two
echo '3 - '$image_resource_group # three
echo '4 - '$IMAGE_RESORUCE_GROUP #four