if [ $# -ne 2 ]
then
	echo " need to give two files "
	exit 1
fi
inputfile=$1
outputfile=$2

read -sp "enter a password:" password
echo
openssl enc -aes-256-cbc -salt -in "$inputfile" -out "$outputfile" -k "$password" -pbkdf2

if [ $? -eq 0 ]
then
	echo "encryption success"
else
	echo "encryption failure"
fi

