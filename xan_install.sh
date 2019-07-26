#!/bin/bash

set -o errexit
#set -o xtrace

# check args
if [ $# -ne 1 ]; then
  echo "$# arguments supplied (expecting 2)"
  echo "Usage: $0 TGBUILD"
  echo "Exemple: $0 b01"
  exit 1
fi

BUILD=$1
. ./`basename "$0"`.ini

# check if version is correct
echo "Using version: $VERSION"
read -p "Continue? [Y/n] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

REPO="/home/gen/ref_tango/$VERSION.$NAME.$BUILD"
TARFILE="/home/gen/ref_tango/$ENV.$VERSION.$NAME.$BUILD.tgz"
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
export TGBUILD="$NAME.$BUILD"

echo "Building $ENV..."
tg_installer/buildDelivery.pl $ENV
echo "Moving build..."
scp $TARFILE $DEST
echo "Done!"


