#!/bin/bash


a=$(netstat -tulnp | grep -Eo ":[0-9]+ " | tr -d ":" | sort -n | uniq)
echo "$a"

read -p "Please input Port: " a

if [ "${a}" == "22" ]; then
	echo "port 22 is using,it provide ssh service"
	exit 0
fi
if [ "${a}" == "25" ]; then
	echo "port 25 is using,Simple Mail Transfer Protocol"
	exit 0
fi
if [ "${a}" == "53" ]; then
	echo "port 53 is using,Domain name service"
	exit 0
fi
if [ "${a}" == "67" ]; then
	echo "port 67 is using,Boot protocol service"
	exit 0
fi
if [ "${a}" == "68" ]; then
	echo "port 68 is using,Bootstrap Customer"
	exit 0
fi
if [ "${a}" == "111" ]; then
	echo "port 111 is using,Remote procedure call (RPC) protocol for remote command execution"
	exit 0
fi
if [ "${a}" == "631" ]; then
	echo "port 631 is using,Internet Printing Protocol"
	exit 0
fi
if [ "${a}" == "5353" ]; then
	echo "port 5353 is using,Multiple access broadcast DNS (MDNS)"
	exit 0
fi
if [ "${a}" == "25659" ]; then
	echo "port 25 is using,I can not find"
	exit 0
fi
if [ "${a}" == "44251" ]; then
	echo "port 44251 is using,I can not find"
	exit 0
fi
if [ "${a}" == "57942" ]; then
	echo "port 57942 is using,I can not find"
	exit 0
fi