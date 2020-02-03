#!/bin/bash

for ip_address in "$@"; do
	 nc  -v -z -w 0  $ip_address 80 >> file.txt 2>&1
	 nc  -v -z -w 0  $ip_address 443 >> file.txt 2>&1
done

grep -i 'succeeded!' ./file.txt;

rm ./file.txt;
