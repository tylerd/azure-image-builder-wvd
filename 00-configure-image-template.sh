#!/bin/bash
TEMPLATEFILE=${IMAGETEMPLATEFILENAME}
#TEMPLATEFILE=image-template-win-10.json

APIVERSION=2019-05-01-preview
AZUREIMAGEBUILDEREGION=eastus2
SUBSCRIPTIONID=1965c25a-b7fd-48b5-a393-c9e785c1c4d9
RESOURCEGROUPNAME=aib-sig-rg
USERASSIGNEDMANAGEDIDENTITY=aibBuiUserId1591378019
SIGNAME=myIBSIG
SIGIMAGENAME=aibWin10365Image
RUNOUTPUTNAME=aibMicrosoftWindows10Desktop

sed -i -e "s/<APIVERSION>/$APIVERSION/g" $TEMPLATEFILE
sed -i -e "s/<AZUREIMAGEBUILDEREGION>/$AZUREIMAGEBUILDEREGION/g" $TEMPLATEFILE
sed -i -e "s/<SUBSCRIPTIONID>/$SUBSCRIPTIONID/g" $TEMPLATEFILE
sed -i -e "s/<RESOURCEGROUPNAME>/$RESOURCEGROUPNAME/g" $TEMPLATEFILE
sed -i -e "s/<USERASSIGNEDMANAGEDIDENTITY>/$USERASSIGNEDMANAGEDIDENTITY/g" $TEMPLATEFILE
sed -i -e "s/<SIGNAME>/$SIGNAME/g" $TEMPLATEFILE
sed -i -e "s/<SIGIMAGENAME>/$SIGIMAGENAME/g" $TEMPLATEFILE
sed -i -e "s/<RUNOUTPUTNAME>/$RUNOUTPUTNAME/g" $TEMPLATEFILE