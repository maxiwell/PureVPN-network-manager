#!/bin/bash

NM_DISPATCHER=/etc/NetworkManager/dispatcher.d/
KILLSWITCH_SCRIPT=99vpnkillswitch

sudo cp $KILLSWITCH_SCRIPT $NM_DISPATCHER
sudo chown root:root $NM_DISPATCHER/$KILLSWITCH_SCRIPT 
sudo chmod 755       $NM_DISPATCHER/$KILLSWITCH_SCRIPT


