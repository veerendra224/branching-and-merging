read -p "Enter the value of n: " n

sum=0

for ((i = 1; i <= n; i++))
do
    square=$((i * i))
    sum=$((sum + square))
done
echo "The sum of squares of the first $n natural numbers is: $sum"

