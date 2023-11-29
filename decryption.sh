
    if [ $# -ne 2 ]
	    then
echo "Usage: $0 <input_file> <output_file>"
     exit 1
fi

input_file="$1"
output_file="$2"

# Prompt for the password used for encryption
  read -s -p "Enter the decryption password: " password
  echo

   # # Decrypt the file using openssl
 openssl enc -d -aes-256-cbc -in "$input_file" -out "$output_file" -k "$password" -pbkdf2

 if [ $? -eq 0 ]; then
        echo "File decrypted successfully."
 else
        echo "Decryption failed. Please check the password."
 fi
