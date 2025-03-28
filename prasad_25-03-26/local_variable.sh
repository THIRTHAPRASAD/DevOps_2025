#!/bin/bash
function my_fun() {
	local my_var="Inside function"
	echo $my_var
	}
my_fun
echo $my_var
