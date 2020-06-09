#!/bin/bash
TEMPLATEFILE=${IMAGETEMPLATEFILENAME}

APIVERSION=2020-02-14
AZUREIMAGEBUILDEREGION=eastus
SUBSCRIPTIONID=1965c25a-b7fd-48b5-a393-c9e785c1c4d9
RESOURCEGROUPNAME=aib-sig-rg
USERASSIGNEDMANAGEDIDENTITY=aibBuiUserId1591378019
SIGNAME=myIBSIG
SIGIMAGENAME=aibWin10365Image
SIGREGION=eastus2
RUNOUTPUTNAME=aibMicrosoftWindows10Desktop
VNETSUBSRCIPTIONID=1965c25a-b7fd-48b5-a393-c9e785c1c4d9
VNETRGNAME=aib-sig-rg
VNETNAME=aib-vnet-backup
SUBNETNAME=default

sed -i -e "s/<APIVERSION>/$APIVERSION/g" $TEMPLATEFILE
sed -i -e "s/<AZUREIMAGEBUILDEREGION>/$AZUREIMAGEBUILDEREGION/g" $TEMPLATEFILE
sed -i -e "s/<SUBSCRIPTIONID>/$SUBSCRIPTIONID/g" $TEMPLATEFILE
sed -i -e "s/<RESOURCEGROUPNAME>/$RESOURCEGROUPNAME/g" $TEMPLATEFILE
sed -i -e "s/<USERASSIGNEDMANAGEDIDENTITY>/$USERASSIGNEDMANAGEDIDENTITY/g" $TEMPLATEFILE
sed -i -e "s/<SIGNAME>/$SIGNAME/g" $TEMPLATEFILE
sed -i -e "s/<SIGIMAGENAME>/$SIGIMAGENAME/g" $TEMPLATEFILE
sed -i -e "s/<SIGREGION>/$SIGREGION/g" $TEMPLATEFILE
sed -i -e "s/<RUNOUTPUTNAME>/$RUNOUTPUTNAME/g" $TEMPLATEFILE
sed -i -e "s/<VNETSUBSRCIPTIONID>/$VNETSUBSRCIPTIONID/g" $TEMPLATEFILE
sed -i -e "s/<VNETRGNAME>/$VNETRGNAME/g" $TEMPLATEFILE
sed -i -e "s/<VNETNAME>/$VNETNAME/g" $TEMPLATEFILE
sed -i -e "s/<SUBNETNAME>/$SUBNETNAME/g" $TEMPLATEFILE