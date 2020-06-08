#!/bin/sh
# Reset tingen to latest working commit
cd /tingen
git pull

python TinGen.py --headless  --add-non-nsw-files --upload-to-folder_id ${FOLDER_ID_TO_UPLOAD_TO} FOLDER_ID_TO_SCAN ${FOLDER_ID_TO_SCAN}
