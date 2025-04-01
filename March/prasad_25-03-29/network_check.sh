#!/bin/bash
#check for network connection
if ip a | grep -q "inet "; then
	echo "Network is connected"
else
	echo "Not connected"
fi
