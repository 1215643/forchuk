echo "enter the fibonacci series"
read n

a=0
b=1
echo "enter the fibonacci terms $n"
for ((i=0; i<n; i++))
do
	echo -n "$a"
	temp=$(( a+b ))
	a=$b
	b=$temp
done
echo

