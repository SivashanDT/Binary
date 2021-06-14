#!/bin/sh /etc/rc.common
EXTRA_COMMANDS="update"
EXTRA_HELP=" update main code"

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

update(){
    echo update
    cd /root/ && curl -OL https://github.com/SivashanDT/Binary/raw/main/main
    chmod +x /root/main
}