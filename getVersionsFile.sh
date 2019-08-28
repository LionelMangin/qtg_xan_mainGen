#!/bin/bash

set -o errexit
#set -o xtrace

. ./`basename "$0"`.ini

COOKIEFILE=`basename "$0"`.cookies.txt
VERSIONSFILE=xan_mainGen/versions.${ENV}

if [[ -f "$COOKIEFILE" ]]; then
  echo "Using existing ${COOKIEFILE}!"
else
  # login
  read -p 'LSC User: ' USER
  read -sp 'LSC Password: ' PASSWORD
  echo

  wget -q --save-cookies $COOKIEFILE --no-check-certificate --keep-session-cookies --post-data "LoginForm[username]=${USER}&LoginForm[password]=${PASSWORD}" --delete-after 'https://192.168.99.156/lsc-support/index.php?r=site/login'
fi

wget -q --no-check-certificate --load-cookies $COOKIEFILE -O ${VERSIONSFILE} "https://192.168.99.156/lsc-support/index.php?r=productVersion/exportBuildFile&id=${LSCID}&action=1"

# check file
LINE=$(head -n 1 $VERSIONSFILE)
if [[ $LINE == "# CVS - Do not modify this header ! #" ]]; then
  echo "versions download success!" 
else
  echo "versions download failed!"
  echo "try removing $COOKIEFILE"
fi


