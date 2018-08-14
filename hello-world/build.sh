#!/bin/bash

#***********Config Project
#project Name
MWProjectName="hello-world"
#scheme Name
MWScheme="hello-world"
#Release or Debug
MWConfiguration="Debug"
#Date
MWDate=`date +%Y%m%d_%H%M`
# get current path
current_Path=`pwd`
echo "=================="
echo $current_Path
echo "=================="
#Project Path
MWWorkspace="$current_Path"
echo $MWWorkspace
#build Path
MWBuildDir="$current_Path/build"
echo $MWBuildDir
#plist FileName (Developer, AD-hoc, App store)
MBPlistName="ExportOptions.plist"

#build path
echo $MWBuildDir
mkdir -p $MWBuildDir


#archive Project
xcodebuild clean \
archive \
-workspace "$MWProjectName.xcworkspace" \
-scheme "$MWScheme" \
-configuration "$MWConfiguration" \
-archivePath "$MWBuildDir/$MWProjectName" \
-derivedDataPath "$MWBuildTempDir"

#export ipa
xcodebuild -exportArchive \
-archivePath "$MWBuildDir/$MWProjectName.xcarchive" \
-exportPath "$MWBuildDir/$MWProjectName$MWDate" \
-exportOptionsPlist "$MWWorkspace/$MBPlistName"

echo $MWBuildDir
