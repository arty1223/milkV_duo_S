#!/bin/bash
echo "pre-up ifconfig eth0 hw ether 78:01:B3:FC:E8:55" >> /etc/network/interfaces && sync
echo "reboot for changes to take effect"