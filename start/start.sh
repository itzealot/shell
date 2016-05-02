#!/bin/sh   

# 判断是否程序已启动   
jappname='MyAppClass'
javaps=`jps`
i=0
psid=0

# 遍历 jps 的结果
for psresult in $javaps
do
	let cur=i%2
	if [ $cur -eq 0 ]; then
		psid=$psresult   
	else
	if (test "$psresult" = "$jappname")   
		then
			echo "程序"$jappname"[pid="$psid"]已经启动!"
			exit 0
		fi
	fi
	let i++;
done

# 引入依赖类库到类路径
export CLASSPATH=.
pathtmp=''
for jarpath in `ls lib/*.jar`
do
	CLASSPATH=$CLASSPATH:$jarpath
done
export CLASSPATH=$CLASSPATH
java -server com.myapp.MyAppClass $*