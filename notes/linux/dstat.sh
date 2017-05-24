# yum:可以实时的监控cpu、磁盘、网络、IO、内存等使用情况

# install
yum install -y dstat

# Usage:
# dstat [-afv] [options..] [delay [count]]
# -c : 显示CPU系统占用，用户占用，空闲，等待，中断，软件中断等信息。
# -C : 当有多个CPU时候，此参数可按需分别显示cpu状态，例 : -C 0,1 是显示cpu0和cpu1的信息。
# -d : 显示磁盘读写数据大小。
# -D hda,total : include hda and total。
# -n : 显示网络状态。
# -N eth1,total : 有多块网卡时，指定要显示的网卡。
# -l : 显示系统负载情况。
# -m : 显示内存使用情况。
# -g : 显示页面使用情况。
# -p : 显示进程状态。
# -s : 显示交换分区使用情况。
# -S : 类似D/N。
# -r : I/O请求情况。
# -y : 系统状态。
# --ipc : 显示ipc消息队列，信号等信息。
# --socket : 用来显示tcp udp端口状态。
# -a : 此为默认选项，等同于-cdngy。
# -v : 等同于 -pmgdsc -D total。
# --output 文件 : 此选项也比较有用，可以把状态信息以csv的格式重定向到指定的文件中，以便日后查看。
# cpu : hiq、siq分别为硬中断和软中断次数。
# system : int、csw分别为系统的中断次数(interrupt)和上下文切换(context switch)
dstat

# 此时让程序默默的在后台运行并把结果输出到/root/dstat.csv文件中
dstat --output /root/dstat.csv &

# 如想监控swap，process，sockets，filesystem并显示监控的时间
# --output dstFile : 指定输出文件
dstat -tsp --socket --fs

# 查看dstat能使用的所有参数，其中上面internal是dstat本身自带的一些监控参数
dstat --list
