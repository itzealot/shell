jstack -help
Usage:
    jstack [-l] <pid> : (to connect to running process)
    jstack -F [-m] [-l] <pid> : (to connect to a hung process)
    jstack [-m] [-l] <executable> <core> : (to connect to a core file)
    jstack [-m] [-l] [server_id@]<remote server IP or hostname> : (to connect to a remote debug server)

Options:
    -F : to force a thread dump. Use when jstack <pid> does not respond (process is hung)
    -m : to print both java and native frames (mixed mode)
    -l : long listing. Prints additional information about locks
    -h : or -help to print this help message

"main" #1 prio=5 os_prio=0 tid=0x00007f341000a000 nid=0x7d60 waiting on condition [0x00007f3414cac000]
   java.lang.Thread.State: TIMED_WAITING (sleeping)
	at java.lang.Thread.sleep(Native Method)
	at com.surfilter.mass.tools.util.Threads.sleep(Threads.java:29)
	at com.surfilter.mass.tools.util.ParseRelationUtil.readCertification2RowKey(ParseRelationUtil.java:80)
	at com.surfilter.mass.tools.RedisCertificationUpdateApp.main(RedisCertificationUpdateApp.java:83)

   Locked ownable synchronizers:
	- None
"main" : 线程名称
prio=5 : 线程优先级
os_prio=0 : 操作系统优先级
tid=0x00007f341000a000 : tid
nid=0x7d60 : nid
waiting on condition [0x00007f3414cac000] : 线程状态


线程状态分析
正如我们刚看到的那样，线程的状态是一个重要的指标，它会显示在线程 Stacktrace的头一行结尾的地方。
runnable : 当获得CPU的使用权时就可以运行或准备好运行的状态。
waiting for monitor entry : 等待获得锁。
waiting on condition : 对Thread对象调用任何sleep()方法。
Locked ownable synchronizers ：锁相关信息


dump 文件里，值得关注的线程状态有:
死锁 : Deadlock(重点关注)
执行中 : Runnable
等待资源 : Waiting on condition(重点关注)
等待获取监视器 : Waiting on monitor entry(重点关注)
暂停 : Suspended
对象等待中 : Object.wait() 或 TIMED_WAITING
阻塞 : Blocked(重点关注)
停止 : Parked

