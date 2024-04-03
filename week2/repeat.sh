array=(4 5 6 7 4 8 4 9 4)

read -p "Enter the number to search for: " target
count=0

for num in "${array[@]}"
do
    if [ $num -eq $target ]; then
        ((count++))
    fi
done
echo "The number $target is repeated $count times in the array."

