PureVPN Network Manager
=====================================

You can follow the instruction from PureVPN website to add each .ovpn file in NetworkManager. Or you can use my script ``install.sh``. To add 3 PureVPN server in the NetworkManager, use:

```bash
./install.sh UDP/Brazil-udp.ovpn
./install.sh FastUDP/Fastest-purevpn.ovpn
./install.sh TCP/New\ York-tcp.ovpn
sudo systemctl restart network-manager

```

Now, in the nm-applet, you can see these 3 server in the VPN tab

Kill Switch 
----------------

PureVPN doesn't support Kill Switch on Linux. But I found a [script](https://thedarkgod.wordpress.com/2014/09/05/adding-a-vpn-killswitch-to-networkmanager/) that enables the Kill Switch behavior on Network Manager. To install:

```bash
cd killswitch
./install_killswitch.sh
```

Now, when your VPN connection drops, the Network Manager disconnects the physical interface, avoiding that your online traffic becomes susceptible to various kinds of cybercrimes and online breaches or intrusions.




