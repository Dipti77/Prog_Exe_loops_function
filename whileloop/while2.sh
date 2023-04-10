#Find the magic number
# a. Ask the user to think of a number n between 1 to 100
# b. Then check with the user if the number is less than n/2 or greater
# c. Repeat till the magic number is reached

low=0
high=100
mid=$(((($low+$high))/2))

input=0
	echo "enter 0 if num is less"
	echo "enter 2 if num is greater"
	echo "enter 1 if num is match"

while [[ $low -lt $high && $input -ne 1 ]]
do
	read -p "is this your no $mid" input
	if [[ $input -eq 0 ]]
	then
		high=$mid
		mid=$(((( $low+$high ))/2 ))

	elif [[ $input -eq 2 ]]
	then
		low=$mid
		mid=$(((( $low+$high ))/2))
	elif [[ $input -eq 1 ]]
	then
		echo "this is your no $mid"
	fi
done
