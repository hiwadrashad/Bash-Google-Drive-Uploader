#!/bin/bash
set pass "P@ssw0rd"
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
send "$pass"
expect "Retype new password: "
send "$pass"
ssh $TerminalEmail
expect: "$TerminalEmail's password: "
