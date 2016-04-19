#! /bin/sh

###################### 文件测试运算符列表 ######################
file="/var/www/tutorialspoint/unix/test.sh"

# 检测文件是否可读，如果是，则返回 true
if [ -r $file ]
then
   echo "File has read access"
else
   echo "File does not have read access"
fi

# 检测文件是否可写，如果是，则返回 true
if [ -w $file ]
then
   echo "File has write permission"
else
   echo "File does not have write permission"
fi

# 检测文件是否可执行，如果是，则返回 true
if [ -x $file ]
then
   echo "File has execute permission"
else
   echo "File does not have execute permission"
fi

# 检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。
if [ -f $file ]
then
   echo "File is an ordinary file"
else
   echo "This is sepcial file"
fi

# 检测文件是否是目录，如果是，则返回 true
if [ -d $file ]
then
   echo "File is a directory"
else
   echo "This is not a directory"
fi

# 检测文件是否为空（文件大小是否大于0），不为空返回 true
if [ -s $file ]
then
   echo "File size is zero"
else
   echo "File size is not zero"
fi

# 检测文件（包括目录）是否存在，如果是，则返回 true
if [ -e $file ]
then
   echo "File exists"
else
   echo "File does not exist"
fi
