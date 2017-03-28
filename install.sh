#!/bin/bash

if [ -z "$1" ]; then
    echo -e "Use: "
    echo -e "\t$0 <ovpn file>"
    echo -e "\nExample:"
    echo -e "\t$0 UDP/Brazil-udp.ovpn\n"
    exit 0
fi

OVPNFILE=$1

echo "$OVPNFILE";

NAME="PureVPN `basename "$OVPNFILE" .ovpn`"
SERVER=`awk '$1 ~ /^remote/' "$OVPNFILE" | cut -d\  -f2`
PORT=`awk '$1 ~ /^remote/' "$OVPNFILE" | cut -d\  -f3`
UUID=`uuidgen`
LINUXUSER=`whoami`

echo "VPN Username:"
read VPNUSER

cp template.txt "$NAME"
sed -i "s/#NAME/$NAME/g" "$NAME"
sed -i "s/#UUID/$UUID/g" "$NAME"
sed -i "s/#LINUXUSER/$LINUXUSER/g" "$NAME"
sed -i "s/#SERVER/$SERVER/g" "$NAME"
sed -i "s/#PORT/$PORT/g" "$NAME"
sed -i "s/#VPNUSER/$VPNUSER/g" "$NAME"
sed -i "s@#PWD@$PWD@g" "$NAME"


chmod 600 "$NAME"
sudo chown root:root "$NAME"
sudo mv "$NAME" /etc/NetworkManager/system-connections/
# sudo systemctl restart network-manager


