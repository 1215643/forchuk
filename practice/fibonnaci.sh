echo "enter the fibonacci series"
read n

a=0
b=1
echo "the finoccai terms are $n"
for ((i=0; i<n; i++))
do
	echo -n $@
	temp=$((a + b))
	a=$b
	b=$temp
done


#o "entere the number of fibonaic series"
#read n

#a=0
#b=1
#echo "fibonaic series for $n terms"
#for ((i=0; i<n; i++))
#do

#	echo -n "$a"
#	temp=$((a + b))
#	a=$b
#	b=$temp
#done
#echo

