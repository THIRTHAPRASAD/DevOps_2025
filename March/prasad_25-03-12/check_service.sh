#!/bin/bash
if systemctl is-active --quiet apache2;then
	echo " server is running"
else
	echo "inactive"
fi

