#!/bin/sh

a="abc"
b="efg"

# = : 检测两个字符串是否相等，相等返回 true
if [ $a = $b ]
then
   echo "$a = $b : a is equal to b"
else
   echo "$a = $b: a is not equal to b"
fi

# != : 检测两个字符串是否相等，不相等返回 true
if [ $a != $b ]
then
   echo "$a != $b : a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi

# -z : 检测字符串长度是否为0，为0返回 true
if [ -z $a ]
then
   echo "-z $a : string length is zero"
else
   echo "-z $a : string length is not zero"
fi

# -n : 检测字符串长度是否为0，不为0返回 true
if [ -n $a ]
then
   echo "-n $a : string length is not zero"
else
   echo "-n $a : string length is zero"
fi

#  检测字符串是否为空，不为空返回 true
if [ $a ]
then
   echo "$a : string is not empty"
else
   echo "$a : string is empty"
fi
