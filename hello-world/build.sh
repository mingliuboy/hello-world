#!/bin/bash

#***********Config Project
#project Name
MWProjectName="hello-world"
#scheme Name
MWScheme="hello-world"
#Release or Debug
MWConfiguration="Release"
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
-derivedDataPath "$MWBuildTempDir" \

ipa_path="$MWBuildDir/$MWProjectName$MWDate"

#export ipa
xcodebuild -exportArchive \
-archivePath "$MWBuildDir/$MWProjectName.xcarchive" \
-exportPath $ipa_path \
-exportOptionsPlist "$MWWorkspace/$MBPlistName"

echo $MWBuildDir

# config hockey app
STATUS="2"

NOTIFY="1"

RELEASE_NOTES="this upload ipa to hockey Test"

ZIPPED_DSYM=""
API_TOKEN="108588c841334cc084ad92067075de09"

# Deploy
cd $ipa_path

echo $ipa_path

pwd

ls -al

# curl -F "status=$STATUS" -F "notify=$NOTIFY" -F "notes=$RELEASE_NOTES" -F "notes_type=0" -F "ipa=@$BUILD_FILE_NAME.ipa" -F "dsym=@$ZIPPED_DSYM" -H "X-HockeyAppToken:$API_TOKEN" https://rink.hockeyapp.net/api/2/apps/upload
curl -F "status=$STATUS" -F "notify=$NOTIFY" -F "notes=$RELEASE_NOTES" -F "notes_type=0" -F "ipa=@$MWProjectName.ipa" -H "X-HockeyAppToken:$API_TOKEN" https://rink.hockeyapp.net/api/2/apps/upload

