#!/bin/sh
# Reset tingen to latest working commit
cd /tingen
git pull

if [ -n "${CREDENTIALS_PATH}" ]; then
  echo "Credentials path set to ${CREDENTIALS_PATH}"
else
echo "YOU MUST SPECIFY CREDENTIALS_PATH ENIVRONMENT VARIABLE TO POINT TO YOUR credentials.json FILE" 
exit 1
fi

python TinGen.py --headless --credentials ${CREDENTIALS_PATH} --token ${TOKEN_PATH} --index-file ${INDEX_FILE_PATH} --success "Custom Index loaded successfully" --add-non-nsw-files --upload-to-folder_id ${FOLDER_ID_TO_UPLOAD_TO} ${FOLDER_ID_TO_SCAN}
