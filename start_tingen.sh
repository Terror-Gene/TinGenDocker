#!/bin/sh
# Reset tingen to latest working commit
cd /tingen
git pull

python TinGen.py --headless --credentials ${CREDENTIALS_PATH} --token ${TOKEN_PATH} --index-file ${INDEX_FILE_PATH} --success "Custom Index loaded successfully" --add-non-nsw-files --upload-to-folder_id ${FOLDER_ID_TO_UPLOAD_TO} ${FOLDER_ID_TO_SCAN}
