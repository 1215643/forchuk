#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage: $0 <input_file> <output_file>"
        exit 1
         fi
input_file="$1"
output_file="$2"
read -sp "Enter a password: " password
echo
 # Encrypt the file using openssl
  openssl enc -aes-256-cbc -salt -in "$input_file" -out "$output_file" -k "$password" -pbkdf2

  if [ $? -eq 0 ]; then
	       echo "File encrypted successfully."
       else
	            echo "Encryption failed"
  fi
