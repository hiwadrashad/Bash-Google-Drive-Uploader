#!/bin/bash
cd ~
if [ -d "/Googledrive" ] 
then
    echo "Directory /path/to/dir exists." 
else 
    mkdir Googledrive
fi
mkdir Googledrive
cd Googledrive
touch GoogleDriveUploader.sh
REQUIRED_PKG="openssh-server"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi