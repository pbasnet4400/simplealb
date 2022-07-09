#!/bin/bash
# Usage Example
# ./register.sh <LB_ip> <LB_admin_port> <target1_ip> <target2_ip> <target3_ip> <targetN_ip>

if [ $# -lt 3 ]
then
    echo "Invalid Syntax"
    echo "Please use this format"
    echo "./register.sh <LB_ip> <LB_admin_port> <target1_ip> <target2_ip> <target3_ip> <targetN_ip>"
fi

for ip in "${@:3}"
do
    echo "registering ip '$ip'"
    echo -ne $(echo  "\x11\x11$(echo "$ip" | tr "." "\n" | xargs printf '\\x%02X')\x14\x07") > "/dev/udp/$1/$2"
done