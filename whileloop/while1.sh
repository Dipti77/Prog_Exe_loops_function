# Write a program that takes a command line argument n and prints a table of the powers of 2 that are less than or equal to 2^n till 256 is reached.

read -p "Enter the number: " n

power=1
i=1

while [ $i -le $n ]
do
        power=$((2 ** $i))
	((i++))

	if [ $power -le 256 ]
	then
		echo $power
	fi
done

