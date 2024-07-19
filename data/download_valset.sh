#!/bin/bash
DOCUMENT_ID="1qCnwdbXFTf96g_LP-g_h-0BQcypNDuWB"
FINAL_DOWNLOADED_FILENAME="val.zip"

curl -c /tmp/cookies "https://drive.google.com/uc?export=download&id=$DOCUMENT_ID" > /tmp/intermezzo.html
curl -L -b /tmp/cookies "https://drive.google.com$(cat /tmp/intermezzo.html | grep -Po 'uc-download-link" [^>]* href="\K[^"]*' | sed 's/\&amp;/\&/g')" > $FINAL_DOWNLOADED_FILENAME
unzip val.zip
rm val.zip

