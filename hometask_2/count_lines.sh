#!/bin/bash

# User can input url or a file, and program automatically choose option for input data

#You shoud pass url or the local file

if [[ $1 =~ ^https?:// ]]; then
	curl -s $1 \
	| sort | uniq -c \
	| sort -r |  sed 's/^\ *//' | head -n 1;
else
	sort $1 | uniq -c | sort -r |  sed 's/^\ *//' | head -n 1
fi
