#!/bin/bash

# config hockey app
STATUS="2"
NOTIFY="1"
RELEASE_NOTES="this upload ipa to hockey Test"
BUILD_FILE_NAME="hello-world"
ZIPPED_DSYM=""
API_TOKEN="108588c841334cc084ad92067075de09"

# Deploy
cd "build/hello-world20180814_1512"

# curl -F "status=$STATUS" -F "notify=$NOTIFY" -F "notes=$RELEASE_NOTES" -F "notes_type=0" -F "ipa=@$BUILD_FILE_NAME.ipa" -F "dsym=@$ZIPPED_DSYM" -H "X-HockeyAppToken:$API_TOKEN" https://rink.hockeyapp.net/api/2/apps/upload
curl -F "status=$STATUS" -F "notify=$NOTIFY" -F "notes=$RELEASE_NOTES" -F "notes_type=0" -F "ipa=@$BUILD_FILE_NAME.ipa" -H "X-HockeyAppToken:$API_TOKEN" https://rink.hockeyapp.net/api/2/apps/upload
