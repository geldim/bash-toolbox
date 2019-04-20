snap install easy-openvpn
snap connect easy-openvpn:network-control  :network-control
snap connect easy-openvpn:firewall-control :firewall-control
snap connect easy-openvpn:home :home
sysctl -w net.ipv4.ip_forward=1
easy-openvpn.setup -u udp://<EXTERNAL_IP_ADDRESS>
service snap.easy-openvpn.easy-openvpn start
easy-openvpn.add-client <NEW_CLIENT_USERNAME> > <NEW_CLIENT_USERNAME>.ovpn
