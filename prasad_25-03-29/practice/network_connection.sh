#!/bin/bash
if ip a | grep -q "inet "; then
	echo "Network connected"
else
	echo "no Network"
fi

