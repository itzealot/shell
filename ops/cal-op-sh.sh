#!/bin/sh

a=10
b=20

########################## 算术运算符 ##########################
# a+b
val=`expr $a + $b`

echo "a + b : $val"

# a-b
val=`expr $a - $b`
echo "a - b : $val"

# a*b
val=`expr $a \* $b`
echo "a * b : $val"

# a/b
val=`expr $b / $a`
echo "b / a : $val"

# a%b
val=`expr $b % $a`
echo "b % a : $val"

# if条件句
if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi
