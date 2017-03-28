PureVPN Network Manager
=====================================

You can follow the instruction from PureVPN website to add each .ovpn file in NetworkManager. Or you can use my script ``install.sh``. To add 3 PureVPN server in the NetworkManager, use:

```bash
./install.sh UDP/Brazil-udp.ovpn
./install.sh FastUDP/Fastest-purevpn.ovpn
./install.sh TCP/New\ York-tcp.ovpn

```

Now, in the nm-applet, you can see these 3 server in the VPN tab
