
echo "Enter the value of n to find the nth Fibonacci number: "
read n

a=0
b=1

if [ $n -eq 0 ]; then
    result=0
elif [ $n -eq 1 ]; then
    result=1
else
    for ((i=2; i<=$n; i++)); do
        result=$((a + b))
        a=$b
        b=$result
    done
fi

echo "The $n-th Fibonacci number is: $result"

