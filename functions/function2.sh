# Write a function to check if the two numbers are palindromes

read -p "Enter the number: " n

function palindrome(){

temp=$n
rev=0

while [ $n -gt 0 ]
do
	rem=$(($n % 10))
	rev=$(($rev * 10 + $rem))
	n=$(($n / 10))
done
echo "Reverse:" $rev

if [ $temp -eq $rev ]
then
	echo "Numbers are palindrome"
else
	echo "Numbers are not palindrome"

fi

}

palindrome
