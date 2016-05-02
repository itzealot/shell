#! /bin/sh
# 全局变量与局部变量的适用范围
num = 123

func1() {
	num = 321
	echo $num
}

func2() {
#	局部变量
	local num = 456;
	echo $num
}

# 执行
# 输出变量值，结果为 123
echo $num

# 调用函数 func1，结果为 321
func1

# 输出变量值，结果为 321
echo $num

# 调用函数 func1，结果为 456
func2

# 输出变量值，结果为 321
echo $num