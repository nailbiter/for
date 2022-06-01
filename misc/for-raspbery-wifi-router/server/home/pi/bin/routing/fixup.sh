#!/bin/sh

echo start >> /tmp/routing_fixup.log.txt
date >> /tmp/routing_fixup.log.txt
sudo ifdown wlan0
sudo ifup wlan0
sudo iptables -t nat -A POSTROUTING -o br0 -j MASQUERADE
sudo iptables -A FORWARD -i br0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i wlan0 -o br0 -j ACCEPT
echo end >> /tmp/routing_fixup.log.txt
