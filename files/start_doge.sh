#!/bin/sh
# Reset nut to latest working commit
cd /doge/nut
git pull
#Copy keys.txt to doge folder
if [ -e /keys/keys.txt ]; then
  cp /keys/keys.txt /doge/nut/keys.txt
else
  echo "--- YOU MUST PLACE KEYS.TXT IN THE /keys MOUNTPOINT ---"
  exit 1
fi
#Set variables
if [ -n "${NUT_USER}" ]; then
  sed -i -e 's/AdMiN/'${NUT_USER}'/g' /doge/doge.config.json
  sed -i -e 's/AdMiN/'${NUT_USER}'/g' /doge/nut/conf/users.conf
  echo "Nut user set to ${NUT_USER}"
fi

if [ -n "${NUT_PASSWD}" ]; then
  sed -i -e 's/nYsTIaNICHIm/'${NUT_PASSWD}'/g' /doge/doge.config.json
  sed -i -e 's/nYsTIaNICHIm/'${NUT_PASSWD}'/g' /doge/nut/conf/users.conf
  echo "Nut passwd set to ${NUT_PASSWD}"
fi

if [ -n "${DOGE_USER}" ]; then
  sed -i -e 's/doge/'${DOGE_USER}'/g' /doge/doge.config.json
  echo "Doge user set to ${DOGE_USER}"
fi

if [ -n "${DOGE_PASSWD}" ]; then
  sed -i -e 's/DOGE/'${DOGE_PASSWD}'/g' /doge/doge.config.json
  echo "Doge passwd set to ${DOGE_PASSWD}"
fi
curl https://github.com/blawar/titledb/blob/master/AR.en.json > /doge/nut/titledb/AR.en.json
curl https://github.com/blawar/titledb/blob/master/AR.es.json > /doge/nut/titledb/AR.es.json
curl https://github.com/blawar/titledb/blob/master/AT.de.json > /doge/nut/titledb/AT.de.json
curl https://github.com/blawar/titledb/blob/master/AU.en.json > /doge/nut/titledb/AU.en.json
curl https://github.com/blawar/titledb/blob/master/BE.fr.json > /doge/nut/titledb/BE.fr.json
curl https://github.com/blawar/titledb/blob/master/BE.nl.json > /doge/nut/titledb/BE.nl.json
curl https://github.com/blawar/titledb/blob/master/CA.en.json > /doge/nut/titledb/CA.en.json
curl https://github.com/blawar/titledb/blob/master/CA.fr.json > /doge/nut/titledb/CA.fr.json
curl https://github.com/blawar/titledb/blob/master/CL.en.json > /doge/nut/titledb/CL.en.json
curl https://github.com/blawar/titledb/blob/master/CL.es.json > /doge/nut/titledb/CL.es.json
curl https://github.com/blawar/titledb/blob/master/CN.zh.json > /doge/nut/titledb/CN.zh.json
curl https://github.com/blawar/titledb/blob/master/CO.en.json > /doge/nut/titledb/CO.en.json
curl https://github.com/blawar/titledb/blob/master/CO.es.json > /doge/nut/titledb/CO.es.json
curl https://github.com/blawar/titledb/blob/master/CZ.en.json > /doge/nut/titledb/CZ.en.json
curl https://github.com/blawar/titledb/blob/master/DE.de.json > /doge/nut/titledb/DE.de.json
curl https://github.com/blawar/titledb/blob/master/DK.en.json > /doge/nut/titledb/DK.en.json
curl https://github.com/blawar/titledb/blob/master/ES.es.json > /doge/nut/titledb/ES.es.json
curl https://github.com/blawar/titledb/blob/master/FI.en.json > /doge/nut/titledb/FI.en.json
curl https://github.com/blawar/titledb/blob/master/FR.fr.json > /doge/nut/titledb/FR.fr.json
curl https://github.com/blawar/titledb/blob/master/GB.en.json > /doge/nut/titledb/GB.en.json
curl https://github.com/blawar/titledb/blob/master/GR.en.json > /doge/nut/titledb/GR.en.json
curl https://github.com/blawar/titledb/blob/master/HK.zh.json > /doge/nut/titledb/HK.zh.json
curl https://github.com/blawar/titledb/blob/master/HU.en.json > /doge/nut/titledb/HU.en.json
curl https://github.com/blawar/titledb/blob/master/IT.it.json > /doge/nut/titledb/IT.it.json
curl https://github.com/blawar/titledb/blob/master/JP.ja.json > /doge/nut/titledb/JP.ja.json
curl https://github.com/blawar/titledb/blob/master/KR.ko.json > /doge/nut/titledb/KR.ko.json
curl https://github.com/blawar/titledb/blob/master/MX.en.json > /doge/nut/titledb/MX.en.json
curl https://github.com/blawar/titledb/blob/master/MX.es.json > /doge/nut/titledb/MX.es.json
curl https://github.com/blawar/titledb/blob/master/NL.nl.json > /doge/nut/titledb/NL.nl.json
curl https://github.com/blawar/titledb/blob/master/NO.en.json > /doge/nut/titledb/NO.en.json
curl https://github.com/blawar/titledb/blob/master/NZ.en.json > /doge/nut/titledb/NZ.en.json
curl https://github.com/blawar/titledb/blob/master/PE.en.json > /doge/nut/titledb/PE.en.json
curl https://github.com/blawar/titledb/blob/master/PE.es.json > /doge/nut/titledb/PE.es.json
curl https://github.com/blawar/titledb/blob/master/PL.en.json > /doge/nut/titledb/PL.en.json
curl https://github.com/blawar/titledb/blob/master/PL.pt.json > /doge/nut/titledb/PL.pt.json
curl https://github.com/blawar/titledb/blob/master/RU.ru.json > /doge/nut/titledb/RU.ru.json
curl https://github.com/blawar/titledb/blob/master/SE.en.json > /doge/nut/titledb/SE.en.json
curl https://github.com/blawar/titledb/blob/master/US.en.json > /doge/nut/titledb/US.en.json
curl https://github.com/blawar/titledb/blob/master/US.es.json > /doge/nut/titledb/US.es.json
curl https://github.com/blawar/titledb/blob/master/ZA.en.json > /doge/nut/titledb/ZA.en.json
curl https://github.com/blawar/titledb/blob/master/languages.json > /doge/nut/titledb/languages.json
curl https://github.com/blawar/titledb/blob/master/versions.txt > /doge/nut/titledb/versions.txt
cd /doge/server
node server.js