#!/bin/bash

# Add local IP addresses required by osmo-gsm-tester resources:
ip addr add 172.18.50.2/24 dev eth0
ip addr add 172.18.50.3/24 dev eth0
ip addr add 172.18.50.4/24 dev eth0
ip addr add 172.18.50.5/24 dev eth0
ip addr add 172.18.50.6/24 dev eth0
ip addr add 172.18.50.7/24 dev eth0
ip addr add 172.18.50.8/24 dev eth0
ip addr add 172.18.50.9/24 dev eth0
ip addr add 172.18.50.10/24 dev eth0

su -c "python3 -u /tmp/osmo-gsm-tester/src/osmo-gsm-tester.py /tmp/trial -T -l dbg -s 4g -t iperf3" -m jenkins