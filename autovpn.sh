#!/bin/bash

#HOST-ip for vpn client

HOST=

PINGERS=$(ping -c 4 $HOST)

PLOSS=$(echo $PINGERS : | grep -oP '\d+(?=% packet loss)')

echo "$DATE : Loss Result : $PLOSS"

if [ "100" -eq "$PLOSS" ];
then
    pon test-vpn &
    echo "$DATE : Now running : $HOST" > /var/log/vpnstat.log
else
    echo "$DATE : Already running : $HOST" > /var/log/vpnstat.log
fi
