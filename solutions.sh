#!/bin/bash -x
#Practice Problems with for loop

#2.Write a program that takes a command-line argument n and prints the nth harmonic number.

#!/bin/bash -x

read -p "Enter a number:" n
totalharmonic=0


for((count=1;count<=$n;count++))
do

harmonic=$((1/$count))
totalharmonic=$(($harmonic + $totalharmonic));
done

echo "nth harmonic number is $totalharmonic"

# 3.Write a program that takes a input and determines if the number is a prime.

echo "enter number"
read num
function prime
{
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
}
r=`prime $number`
echo "$r"

#Functions Practice Problems

#Write a function to check if the two numbers are Palindromes

echo "Enter two number:"
read a
read b
for num in $a $b;
do
    x=$x$sep$num
    sep=" "
done
y=$x
num1=$a
num2=$b
rem=""
rev=0
for word in $y;
do
checkPalindrome $word
if [ $? -eq 0 ]
then
echo "$word is palindrome"
fi
done
checkPalindrome() {
local s=$1
for i in $s ;
do
while [ $i -gt 0]
do
rem=$(($i%10));
rev=$(($rev*10+$rem));
i=$(($i / 10));
done
done

if [[ $rev -eq $num1 && $rev -eq $num2  ]]
then
return 0;
else
return 1;
fi
}





