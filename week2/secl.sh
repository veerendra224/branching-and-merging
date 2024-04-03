
array=(1 2 3 4 5)

largest=${array[0]}
second_largest=-2147483648 

for ((i=1; i<${#array[@]}; i++))
do
    if [[ ${array[i]} -gt $largest ]]; then
        second_largest=$largest
        largest=${array[i]}
    elif [[ ${array[i]} -gt $second_largest && ${array[i]} -ne $largest ]]; then
        second_largest=${array[i]}
    fi
done

echo "Second largest element in the array is: $second_largest"


