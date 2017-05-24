chkconfig iptables --list

# 编辑 crond 表达式文件
crontab -e

# crond 表达式
# 取值范围,0表示周日一般一行对应一个任务
# "*"代表取值范围内的数字
# "/"代表"每"
# "-"代表从某个数字到某个数字
# ","分开几个离散的数字
# 分|小时|日|月|星期|命令
# 0-59|0-23|1-31|1-12|0-6 command
*/2 * * * * /usr/bin/iDriller-shell -q "invalidate metadata; refresh a; refresh b;" &> /tmp/tmp.log

# 列出命令
crontab  -l

# 查看服务状态
service crond status

service crond restart