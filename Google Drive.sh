#!/bin/bash
# Token may be expired
TerminalEmail="ubuntu@127.0.0.1"
Password="P@ssw0rd"
cd ~
if [ -d "/Googledrive" ] 
then
    echo "Directory /path/to/dir exists." 
else 
    mkdir Googledrive
fi
cd Googledrive
REQUIRED_PKG="openssh-server"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi

passwd
expect "New password: "
send "$Password"
expect "Retype new password: "
send "$Password"
ssh $TerminalEmail
expect: "$TerminalEmail's password: "
send: "$Password" 
sudo apt install curl # Linux Debian/Ubuntu
                
curl -X POST -L 
    -H "Authorization: Bearer ya29.a0ARrdaM_siuY3FY2IWv2-tpLOtaR6hkqjWE4Kfr-dLPhvG_Qy_HYs4qCEIp5EvJ2D7rJzc9wXyPBqpBRJ8mLvVTgiXEcEZT6i4LXEEGeqm3cflSptJ_QbS2scy0-czBLkcPwgFnYNvDNsSDNIYPMebkijw2Ze" 
        -F "metadata={name :'Googledriveuploader.zip'};type=application/json;charset=UTF-8" 
            -F "file=@Googledriveuploader.zip;type=application/zip" 
                "https://www.googleapis.com/upload/drive/v3/files?uploadType=multipart"
