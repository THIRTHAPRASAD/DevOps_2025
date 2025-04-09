#!/bin/bash
say_hello() {
	read -p "Enter you name: " input
	echo "Hello $input"
}

say_hello

