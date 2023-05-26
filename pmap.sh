#!/usr/bin/sh

echo "Select Target"
read -p "- " TAR
TAR=${TAR}

PORT="7070"

while true; do

    Result=$(nmap -p $PORT $TAR)

if [[ $Result == *"$PORT/tcp filtered"* ]]

then  
    sleep 10
 
else 
    Result=$(nmap -p $PORT $TAR)

if [[ $Result == *"$PORT/tcp open"* ]]; then
echo "Port is open!"
break

fi
