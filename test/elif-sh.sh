#!/bin/sh
a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
   
elif [ $a -gt $b ]
then
   echo "a is greater than b"
   
elif [ $a -lt $b ]
then
   echo "a is less than b"
   
else
   echo "None of the condition met"
fi

num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
    echo 'The two numbers are equal!'
else
    echo 'The two numbers are not equal!'
fi

# 使用分号; 分隔，则可以写成一行
if test $[2*3] -eq $[1+5]; then echo 'The two numbers are equal!'; fi;