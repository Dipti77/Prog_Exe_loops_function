#help user find degF or degC based on their conversion selection.

echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"

read -p "Select your choice: " choice

function conversion()
{

case $choice in
	1)
	  read -p "Enter temperature (C): " degC
	  degF=`echo $degC | awk '{print ($1*9/5) + 32}'`
	  echo "$degC C = $degF F"
	  ;;

	2)
	  read -p "Enter temperature (F): " degF
	  degC=`echo $degF | awk '{print ($1-32) * (5/9)}'`
	  echo "$degF F = $degC C"
	  ;;

	*)
	  echo "Please select 1 or 2 only"
	  ;;
esac

}
conversion

