#!/usr/bin/bash

echo -e "\n
 __      __    _          _____                            _    \n
 \ \    / /   | |        / ____|                          | |   \n
  \ \  / /   _| |_ __   | |     ___  _ __  _ __   ___  ___| |_  \n
   \ \/ / | | | | '_ \  | |    / _ \| '_ \| '_ \ / _ \/ __| __| \n
    \  /| |_| | | | | | | |___| (_) | | | | | | |  __/ (__| |_  \n
     \/  \__,_|_|_| |_|  \_____\___/|_| |_|_| |_|\___|\___|\__| \n
     \n"
                                                                                                                          
# Ask the user for target IP
read -p 'Taget IP: ' target

# Define a timestamp function
timestamp() {
  date
}

echo "Scanning $target" | echo "Scanning started at $(timestamp)"

ports=(1 5 7 18 20 21 22 23 25 29 37 42 43 49 53 69 70 79 80 103 108 109 110 115 118 119 137 139 143 150 156 161 179 190 194 197 389 396 443 444 445 458 546 547 563 569 1080)

for port in ${ports[@]}
	do nc -nv $target $port

done
echo "Scan Finished $date" | echo "Time Taken $(timestamp)"
