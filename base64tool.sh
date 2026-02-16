#!/bin/bash

#made by : @Ayasmjsz
echo "Welcome to Ayaz64"
cat << "EOF"
    _                              _         
   / \  _   _  __ _ ___ _ __ ___  (_)___ ____
  / _ \| | | |/ _` / __| '_ ` _ \ | / __|_  /
 / ___ \ |_| | (_| \__ \ | | | | || \__ \/ / 
/_/   \_\__, |\__,_|___/_| |_| |_|/ |___/___|
        |___/                   |__/         
EOF
echo "this tool just made for decode and encode base64 only"
echo "1) Decode"
echo "2) Encode"
read opt
if [ "$opt" == "1" ]; then
	echo "Enter your code :"
	read deinput
	echo "Decoded : $(echo $deinput | base64 --decode)"
elif [ "$opt" == "2" ]; then
	echo "Enter your plaintext"
	read plainput
	echo "Encoded : $(echo $plainput | base64)"
else
	echo "Invalid Option"
fi 

