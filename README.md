#### To be updated
To generate your own index.tfl file and to be used in tinfoil without using any website
I will detail later but you will need to generate your own gdrive.token previously to running it in docker. Use eXhumer repo to do so in the credits.


#### ENV variables
+  FOLDER_ID_TO_SCAN : Gdrive folder id where your files are stored
+  FOLDER_ID_TO_UPLOAD_TO : Gdrive folder id where you want the index.tfl file to be uploaded to
+  CREDENTIALS_PATH : Path to your credentials.json file as seen by your container
+  TOKEN_PATH : Path to your gdrive.token file as seen by your container
+  INDEX_FILE_PATH : Path to where you want the index.tfl file to be stored locally as seen by your container
+  SUCCESS : (Optionnal) The message displayed on tinfoil upon loading the index file
+  OPT_ARGS : (Optionnal) list of optionnal arguments you want to add

```
  --share-files         Share files all files inside the index file
  --no-recursion        Scans for files only in top directory for each folder ID entered
  --add-nsw-files-without-title-id
                        Adds files without title ID
  --add-non-nsw-files   Adds files without valid NSW ROM extension(NSP/NSZ/XCI/XCZ) to index
  --success SUCCESS_MESSAGE
                        Adds a success message to index file to show if index is successfully read by tinfoil
  --encrypt             Encrypts the resulting index file
  --public-key PUBLIC_KEY_FILE_PATH
                        File Path for Public Key to encrypt with
  --vm-file VM_FILE     File Path for VM File
  --upload-to-my-drive  Upload resulting index to My Drive
  --new-upload-id       Uploads the newly generated index file with a new file ID instead of replacing old one
  --share-uploaded-index
                        Shares the index file that is uploaded to Google Drive
  --zstandard           Compresses index with Zstandard compression method
  --zlib                Compresses index with Zlib compression method
  --no-compress         Flag to not compress index

```

#### Credits
+  eXhumer [TinGen](https://github.com/eXhumer/TinGen)
