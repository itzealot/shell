# echo 命令格式
# echo [OPTION]... [STRING]...
# 输出环境变量 JAVA_HOME 的值
echo $JAVA_HOME

# export 关键字，用于设置或显示环境变量
# export [-fnp] [变量名称]=[变量设置值]
#-f		代表[变量名称]中为函数名称
#-n		删除指定的变量。变量实际上并未删除，只是不会输出到后续指令的执行环境中
#-p		列出所有的shell赋予程序的环境变量

# 设置JAVA_HOME
# export 命令设置适用当前shell的环境变量值。
# 修改后维持不变，直到当前shell消亡。
# 若要设置为永久，则需要修改文件 /etc/profile
export JAVA_HOME=/usr/java/jdk1.8.0

vari=123

echo $vari

# 删除变量
# unset [-v] variable ...
# 删除函数
# unset -f function ...

# 或者使用 -v(默认情况)
# unset -v vari
unset vari

# 输出空行
echo $vari

hello() {
	echo "Hi"
}

# 调用函数
hello

# 删除函数使用 -f
unset -f hello

# env [OPTION]...[-] [NAME=VALUE]... [COMMAND [ARG]...]
# 在重建的环境中运行程序，设置环境中的每个NAME 为 VALUE，并且运行 COMMAND
# 主要选项
# -i，--ignore-environment
# 不带环境变量启动
# -u，--unset=NAME

# env 命令则可以临时改变环境变量值
# -i选项使shell 执行 echo.sh 时，清空所有由父shell继承来的环境变量
# 仅仅设置命令中指定的PATH变量(将./也添加到命令搜寻路径里)
env -i PATH=./:$PATH echo.sh

