if [ $# -ne 2 ]
then
	echo "error"
	exit 1
fi

inputfile=$1
outputfile=$2

read -s -p "decryption password:" password
echo
openssl enc -d -aes-256-cbc -in "$inputfile" -out "$outputfile" -k "$password" -pbkdf2

if [ $? -eq 0 ]
then
	echo "decryption success"
else
	echo "decryption failed"
fi

