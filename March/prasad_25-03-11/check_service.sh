#!/bin/bash
if systemctl is-active --quiet apache2;then
	echo "service is running"
else
	echo "in active"
fi
