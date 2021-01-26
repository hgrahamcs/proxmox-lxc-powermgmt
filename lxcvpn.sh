#!/bin/bash

HOST=
PVE_USER_NAME=
PVE_USER_AUTH_REALM=
PVE_USER_TOKEN=
PVE_USER_TOKEN_SECRET=
NODE=
VMID=
startVPNLXC(){
	data=`curl -s -k --location --request POST "$HOST/api2/json/nodes/$NODE/lxc/$VMID/status/start" \
		--header "Authorization: PVEAPIToken=$PVE_USER_NAME@$PVE_USER_AUTH_REALM!$PVE_USER_TOKEN=$PVE_USER_TOKEN_SECRET"`
}

stopVPNLXC(){
	data=`curl -s -k --location --request POST "$HOST/api2/json/nodes/$NODE/lxc/$VMID/status/stop" \
		--header "Authorization: PVEAPIToken=$PVE_USER_NAME@$PVE_USER_AUTH_REALM!$PVE_USER_TOKEN=$PVE_USER_TOKEN_SECRET"`
}


echo $1
if [ $1 == "up" ]
then
	startVPNLXC
	sleep 10
	# INSERT SSH TUNNEL HERE
fi

if [ $1 == "down" ]
then
	stopVPNLXC
fi

