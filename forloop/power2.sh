# Write a program that takes a command line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.

read -p "Enter a number: " n
power=1

for (( i=1; i<=n; i++ ))
do
	power=$((2 ** $i))
	echo "2^$i= " $power
done

