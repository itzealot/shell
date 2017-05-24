# 小写 --> 大写
cat file | tr [a-z] [A-Z] > new_file

# 大写 --> 小写
cat file | tr [A-Z] [a-z] > new_file

# abcdef=>xyzabd
echo abcdef | tr 'abcdef' 'xyzabd'

# abcdef=>xyzabc
echo abcdef | tr 'a-f' 'x-za-c'

# 把文件中的数字0-9替换为a-j
cat file | tr [0-9] [a-j] > new_file

# 删除文件file中出现的"Snail"字符
cat file | tr -d "Snail" > new_file

# 删除文件file中出现的换行'\n',制表'\t'字符
cat file | tr -d "\n\t" > new_file

# 删除"连续着的"重复字母，只保留第一个
cat file | tr -s [a-zA-Z] > new_file
 
# 删除空行
cat file | tr -s "\n" > new_file
 
# 删除Windows文件"造成"的'^M'字符
cat file | tr -d "\r" > new_file
cat file | tr -s "\r" "\n" > new_file

# 用空格符\040替换制表符\011
cat file | tr -s "\011" "\040" > new_file
 
# 把路径变量中的冒号":"，替换成换行符"\n"
echo $PATH | tr -s ":" "\n"