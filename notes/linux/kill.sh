# kill:用于删除执行中的程序或工作。
#可将指定的信息送至程序。预设的信息为SIGTERM(15)，可将指定程序终止。若仍无法终止该程序，可使用SIGKILL(9)信息尝试强制删除程序程序或工作的编号可利用ps指令或jobs指令查看。

# kill [-s <信息名称或编号>][程序]　或　kill [-l <信息编号>]

# -l <信息编号> : 若不加<信息编号>选项，则-l参数会列出全部的信息名称。
# -s <信息名称或编号> : 指定要送出的信息。
# [程序] : [程序]可以是程序的 PID 或是 PGID，也可以是工作编号。

# 杀死进程
kill PID

# 强制杀死进程
kill -KILL PID

# 彻底杀死进程
kill -9 PID

# 发送SIGHUP信号，可以使用一下信号
kill -HUP PID

# 显示信号
kill -l

# 杀死指定用户所有进程
kill -9 $(ps -ef | grep user)
kill -u user