#### To be updated
To generate your own index.tfl file and to be used in tinfoil without using any website
I will detail later but you will need to generate your own gdrive.token previously to running it in docker. Use eXhumer repo to do so in the credits.


#### ENV variables
+  FOLDER_ID_TO_SCAN : Gdrive folder id where your files are stored
+  FOLDER_ID_TO_UPLOAD_TO : Gdrive folder id where you want the index.tfl file to be uploaded to
+  CREDENTIALS_PATH : Path to your credentials.json file as seen by your container
+  TOKEN_PATH : Path to your gdrive.token file as seen by your container
+  INDEX_FILE_PATH : Path to where you want the index.tfl file to be stored locally as seen by your container


#### Credits
+  eXhumer [TinGen](https://github.com/eXhumer/TinGen)
