# Extend the program to take a range of number as input and output the prime numbers in that range

read -p "Enter a range of number (a to b): " a b

echo "Prime numbers in the given range are: "

for (( i=$a; i<=$b; i++ ))
do
num=0
	for (( j=2; j<=i-1; j++ ))
	do
		if [ $((i%j)) -eq 0 ]
		then
			num=$(($num+1))
		fi
	done

	if [ $num -eq 0 ]
	then
		echo $i
	fi
done



