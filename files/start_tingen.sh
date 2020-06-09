#!/bin/sh
# Reset tingen to latest working commit
cd /tingen
git pull

if [ -n "${CREDENTIALS_PATH}" ]; then
  echo "Credentials path set to ${CREDENTIALS_PATH}"
else
echo "YOU MUST SET CREDENTIALS_PATH ENVIRONMENT VARIABLE TO POINT TO YOUR credentials.json FILE" 
exit 1
fi

if [ -n "${TOKEN_PATH}" ]; then
  echo "Token path set to ${TOKEN_PATH}"
else
echo "YOU MUST SET TOKEN_PATH ENVIRONMENT VARIABLE TO POINT TO YOUR gdrive.token FILE" 
exit 1
fi

if [ -n "${INDEX_FILE_PATH}" ]; then
  echo "Index file path set to ${INDEX_FILE_PATH}"
else
echo "YOU MUST SET INDEX_FILE_PATH ENVIRONMENT VARIABLE TO POINT WHERE YOU WANT THE index.tfl FILE TO BE STORED ON YOUR SYSTEM" 
exit 1
fi

if [ -n "${FOLDER_ID_TO_UPLOAD_TO}" ]; then
  echo "Folder ID to upload index.tfl file to set to ${FOLDER_ID_TO_UPLOAD_TO}"
else
echo "YOU MUST SET FOLDER_ID_TO_UPLOAD_TO ENVIRONMENT VARIABLE TO THE GDRIVE FOLDER ID WHERE YOU WANT THE index.tfl TO BE UPLOADED" 
exit 1
fi

if [ -n "${FOLDER_ID_TO_SCAN}" ]; then
  echo "Folder ID to scan set to ${FOLDER_ID_TO_SCAN}"
else
echo "YOU MUST SET FOLDER_ID_TO_SCAN ENVIRONMENT VARIABLE TO THE GDRIVE FOLDER ID WHERE YOUR FILES ARE STORED" 
exit 1
fi

if [ -n "${OPT_ARGS}" ]; then
  if [ -n "${SUCCESS}" ]; then
    python TinGen.py ${OPT_ARGS} --success "${SUCCESS}" --headless --credentials ${CREDENTIALS_PATH} --token ${TOKEN_PATH} --index-file ${INDEX_FILE_PATH} --upload-to-folder-id ${FOLDER_ID_TO_UPLOAD_TO} ${FOLDER_ID_TO_SCAN}
  else
    python TinGen.py ${OPT_ARGS} --headless --credentials ${CREDENTIALS_PATH} --token ${TOKEN_PATH} --index-file ${INDEX_FILE_PATH} --upload-to-folder-id ${FOLDER_ID_TO_UPLOAD_TO} ${FOLDER_ID_TO_SCAN}
  fi
else
  if [ -n "${SUCCESS}" ]; then
    python TinGen.py --success "${SUCCESS}" --headless --credentials ${CREDENTIALS_PATH} --token ${TOKEN_PATH} --index-file ${INDEX_FILE_PATH} --upload-to-folder-id ${FOLDER_ID_TO_UPLOAD_TO} ${FOLDER_ID_TO_SCAN}
  else
    python TinGen.py --headless --credentials ${CREDENTIALS_PATH} --token ${TOKEN_PATH} --index-file ${INDEX_FILE_PATH} --upload-to-folder-id ${FOLDER_ID_TO_UPLOAD_TO} ${FOLDER_ID_TO_SCAN}
  fi
fi
  
