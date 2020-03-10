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
curl https://github.com/blawar/titledb/AR.en.json > /doge/nut/titledb/AR.en.json
curl https://github.com/blawar/titledb/AR.es.json > /doge/nut/titledb/AR.es.json
curl https://github.com/blawar/titledb/AT.de.json > /doge/nut/titledb/AT.de.json
curl https://github.com/blawar/titledb/AU.en.json > /doge/nut/titledb/AU.en.json
curl https://github.com/blawar/titledb/BE.fr.json > /doge/nut/titledb/BE.fr.json
curl https://github.com/blawar/titledb/BE.nl.json > /doge/nut/titledb/BE.nl.json
curl https://github.com/blawar/titledb/CA.en.json > /doge/nut/titledb/CA.en.json
curl https://github.com/blawar/titledb/CA.fr.json > /doge/nut/titledb/CA.fr.json
curl https://github.com/blawar/titledb/CL.en.json > /doge/nut/titledb/CL.en.json
curl https://github.com/blawar/titledb/CL.es.json > /doge/nut/titledb/CL.es.json
curl https://github.com/blawar/titledb/CN.zh.json > /doge/nut/titledb/CN.zh.json
curl https://github.com/blawar/titledb/CO.en.json > /doge/nut/titledb/CO.en.json
curl https://github.com/blawar/titledb/CO.es.json > /doge/nut/titledb/CO.es.json
curl https://github.com/blawar/titledb/CZ.en.json > /doge/nut/titledb/CZ.en.json
curl https://github.com/blawar/titledb/DE.de.json > /doge/nut/titledb/DE.de.json
curl https://github.com/blawar/titledb/DK.en.json > /doge/nut/titledb/DK.en.json
curl https://github.com/blawar/titledb/ES.es.json > /doge/nut/titledb/ES.es.json
curl https://github.com/blawar/titledb/FI.en.json > /doge/nut/titledb/FI.en.json
curl https://github.com/blawar/titledb/FR.fr.json > /doge/nut/titledb/FR.fr.json
curl https://github.com/blawar/titledb/GB.en.json > /doge/nut/titledb/GB.en.json
curl https://github.com/blawar/titledb/GR.en.json > /doge/nut/titledb/GR.en.json
curl https://github.com/blawar/titledb/HK.zh.json > /doge/nut/titledb/HK.zh.json
curl https://github.com/blawar/titledb/HU.en.json > /doge/nut/titledb/HU.en.json
curl https://github.com/blawar/titledb/IT.it.json > /doge/nut/titledb/IT.it.json
curl https://github.com/blawar/titledb/JP.ja.json > /doge/nut/titledb/JP.ja.json
curl https://github.com/blawar/titledb/KR.ko.json > /doge/nut/titledb/KR.ko.json
curl https://github.com/blawar/titledb/MX.en.json > /doge/nut/titledb/MX.en.json
curl https://github.com/blawar/titledb/MX.es.json > /doge/nut/titledb/MX.es.json
curl https://github.com/blawar/titledb/NL.nl.json > /doge/nut/titledb/NL.nl.json
curl https://github.com/blawar/titledb/NO.en.json > /doge/nut/titledb/NO.en.json
curl https://github.com/blawar/titledb/NZ.en.json > /doge/nut/titledb/NZ.en.json
curl https://github.com/blawar/titledb/PE.en.json > /doge/nut/titledb/PE.en.json
curl https://github.com/blawar/titledb/PE.es.json > /doge/nut/titledb/PE.es.json
curl https://github.com/blawar/titledb/PL.en.json > /doge/nut/titledb/PL.en.json
curl https://github.com/blawar/titledb/PL.pt.json > /doge/nut/titledb/PL.pt.json
curl https://github.com/blawar/titledb/RU.ru.json > /doge/nut/titledb/RU.ru.json
curl https://github.com/blawar/titledb/SE.en.json > /doge/nut/titledb/SE.en.json
curl https://github.com/blawar/titledb/US.en.json > /doge/nut/titledb/US.en.json
curl https://github.com/blawar/titledb/US.es.json > /doge/nut/titledb/US.es.json
curl https://github.com/blawar/titledb/ZA.en.json > /doge/nut/titledb/ZA.en.json
curl https://github.com/blawar/titledb/languages.json > /doge/nut/titledb/languages.json
curl https://github.com/blawar/titledb/versions.txt > /doge/nut/titledb/versions.txt
cd /doge/server
node server.js