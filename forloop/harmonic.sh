# Write a program that takes a command line argument n and prints the nth harmonic number.

read -p "Enter a number:" n
val=0

for (( i=1; i<=n; i++ ))
do
	sum=`echo $i | awk '{print 1/$1}'`
	val=`echo $val $sum | awk '{print $1+$2}'`
done
echo $val
