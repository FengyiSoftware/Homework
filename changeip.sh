#!/usr/bin/env bash
grpens=$(grep -r $1 /etc/sysconfig/network-scripts/)
if [ -z "${grpens}" ];then
cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/ifcfg-$1;
sed -i "s/NAME=\"ens33\"/NAME=\"$1\"/g" /etc/sysconfig/network-scripts/ifcfg-$1;
sed -i "s/DEVICE=\"ens33\"/DEVICE=\"$1\"/g" /etc/sysconfig/network-scripts/ifcfg-$1;
fi
grpboot=$(cat /etc/sysconfig/network-scripts/ifcfg-$1 | grep "BOOTPROTO=\"dhcp\"")
if [ -z "${grpboot}" ]; then
sed -i "s/^IPADDR.*$/IPADDR=\"$2\"/g" /etc/sysconfig/network-scripts/ifcfg-$1;
sed -i "s/^NETMASK.*$/NETMASK=\"$3\"/g" /etc/sysconfig/network-scripts/ifcfg-$1;
else
sed -i "s/^BOOTPROTO.*$/BOOTPROTO=\"static\"/g" /etc/sysconfig/network-scripts/ifcfg-$1
echo -e "IPADDR=\"$2\"\nNETMASK=\"$3\"\nDNS1=\"192.168.111.2\"\nGATEWAY=\"192.168.111.2\"" >> /etc/sysconfig/network-scripts/ifcfg-$1
fi
ifdown $1 && ifup $1