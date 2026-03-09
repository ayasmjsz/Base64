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
read -p "Choose option: " opt

if [ "$opt" == "1" ]; then
    read -p "Enter your code: " deinput
    result=$(echo "$deinput" | base64 --decode 2>/dev/null)
    echo "Decoded : "
    echo "$result" | tee >(xclip -selection clipboard)
elif [ "$opt" == "2" ]; then
    read -p "Enter your plaintext: " plainput
    result=$(echo "$plainput" | base64)
    echo "Encoded : "
    echo "$result" | tee >(xclip -selection clipboard)
else
    echo "Invalid Option"
fi
