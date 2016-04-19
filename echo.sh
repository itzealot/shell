#! /bin/sh

# 运行Linux 程序有3种方法
# 	1). 使文件具有可执行权限，直接运行文件
#	2). 直接调用命令解释器执行程序
#	3). 使用source 执行文件

# 改变目录
cd /tmp

echo "Hello World"

################# 执行方式 1 #################
# 将 echo.sh 文件变为可执行
#chmod +x echo.sh
# 执行脚本
# 输出信息，不改变当前目录
#./echo.sh
# pwd 查看当前工作目录
#pwd

################# 执行方式 2 #################
# 使用 source 执行，不会创建子进程，而是在父进程中直接执行
# 重新执行修改的脚本文件，使修改立即生效
# 输出信息，并改变当前目录
#source echo.sh
# pwd 查看当前工作目录
#pwd