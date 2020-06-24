#!/bin/sh

sudo pfctl -e -f /etc/pf.conf
sudo dscacheutil -flushcache
