read -p "Enter a number to check if it's a palindrome: " number

original_number=$number
reverse=0

while [ $number -gt 0 ]
do
    digit=$(( $number % 10 ))
    reverse=$(( $reverse * 10 + $digit ))
    number=$(( $number / 10 ))
done

if [ $original_number -eq $reverse ]; then
    echo "$original_number is a palindrome"
else
    echo "$original_number is not a palindrome"
fi

