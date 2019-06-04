#!/bin/bash

# check args
if [ $# -ne 2 ]; then
  echo "$# arguments supplied (expecting 2)"
  echo "Usage: $0 ENV TGBUILD"
  echo "Exemple: $0 XAN_API api.b01"
  exit 1
fi

VERSION="RXAN_01_05_00"

# check if version is correct
echo "Using version: $VERSION"
read -p "Continue? [Y/n] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

REPO="/home/gen/ref_tango/$VERSION.$2"
TARFILE="/home/gen/ref_tango/XANDRIE_TANGO.$VERSION.$2.tgz"
DEST="allbrary@10.9.5.106:/APPLI_A/ALLBRARY/Serveur/liv"

# check if output exists
if [ -d $REPO ]; then
  echo "$REPO exists"
  read -p "Are you sure you want to overwrite repository? [Y/n] " -n 1 -r
  echo    # (optional) move to a new line
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
  fi
  rm -rf $REPO
fi

#perform build
export TGBUILD=$2

echo "Building $1..."
tg_installer/buildDelivery.pl $1
echo "Moving build..."
scp $TARFILE $DEST
echo "Done!"


