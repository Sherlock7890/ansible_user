#!/bin/bash
output_file="${hostname}_$(date +%d%m%Y).txt"
output="
Server Info
$(uname -a)
Uptime
$(uptime)
Ip Info
$(ifconfig -a)
Disk Info
$(df -h)
"
echo "$output" >"$output_file"
echo "Output saved to $output_file"
scp "$output_file" ansible@192.168.1.6 :/home/ansible --password "xyz"
