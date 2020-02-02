#!/bin/bash

sourseFolder=$1;
destFolder=$2;

mkdir -p  $destFolder;  # if user input many directories one/two/three/four/...;



#find $sourseFolder -type f,d -mtime -1 -exec rsync -va {} $destFolder/"$(date +"%Y%m%d")" \;
#also solution but it does the sourseFolder copy;



find $sourseFolder -type f,d -mtime -1 | sed 1d | while read -r line;
						    do rsync -va $line $destFolder/"$(date +"%Y%m%d")"
						  done

#sed 1d --delete first line of output(delete the dot )
#I checked this way  ./script.sh ./folder ./backup
