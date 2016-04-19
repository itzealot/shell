#! /bin/sh

########################## 关系运算符 ##########################
# if else
# -eq : equal, 检测两个数是否相等，相等返回 true
if [ $a -eq $b ]
then
   echo "$a -eq $b : a is equal to b"
else
   echo "$a -eq $b: a is not equal to b"
fi

# -ne : not equal, 检测两个数是否相等，不相等返回 true
if [ $a -ne $b ]
then
   echo "$a -ne $b: a is not equal to b"
else
   echo "$a -ne $b : a is equal to b"
fi

# -gt : greater than, 检测左边的数是否大于右边的，如果是，则返回 true
if [ $a -gt $b ]
then
   echo "$a -gt $b: a is greater than b"
else
   echo "$a -gt $b: a is not greater than b"
fi

# -lt : less than, 检测左边的数是否小于右边的，如果是，则返回 true
if [ $a -lt $b ]
then
   echo "$a -lt $b: a is less than b"
else
   echo "$a -lt $b: a is not less than b"
fi

# -ge : greater or equal, 检测左边的数是否大等于右边的，如果是，则返回 true
if [ $a -ge $b ]
then
   echo "$a -ge $b: a is greater or  equal to b"
else
   echo "$a -ge $b: a is not greater or equal to b"
fi

# -le : less or equal, 检测左边的数是否小于等于右边的，如果是，则返回 true
if [ $a -le $b ]
then
   echo "$a -le $b: a is less or  equal to b"
else
   echo "$a -le $b: a is not less or equal to b"
fi
