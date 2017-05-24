# 对PATH配置的路径计算大小
echo $PATH | tr -s ":" "\n" | xargs du -sh *

# 统计 ASCII 文件类型的行数
file * | grep ASCII | cut -d":" -f1 | xargs wc -l

# 统计文件行数
ls | xargs wc -l