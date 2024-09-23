#!/bin/bash


INTERFACE="enp0s5"


IP_ADDRESS="10.100.0.2"
NETMASK="255.255.255.0"
GATEWAY="10.100.0.1"
DNS_SERVER="8.8.8.8"


sudo ip addr flush dev $INTERFACE


sudo ip addr add $IP_ADDRESS/24 dev $INTERFACE


sudo ip route add default via $GATEWAY dev $INTERFACE


echo "nameserver $DNS_SERVER" | sudo tee /etc/resolv.conf > /dev/null


sudo ip link set $INTERFACE down
sudo ip link set $INTERFACE up

echo "NET INTERFACE $INTERFACE STATIC."
