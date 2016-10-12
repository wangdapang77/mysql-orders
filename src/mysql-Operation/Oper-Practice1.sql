/*cmd运行命令，备份newimao下的admin表*/
mysqldump -uroot -p newimao admin > d://admin.sql

/*http://www.activestate.com/下载ActiviPerl，配置环境变量*/
perl mysqldumpslow.pl -help


/*显示慢查询设置的时间，即参数：long_query_time*/
show variables like 'long%'

/*设置慢查询时间*/
set long_query_time = 2

/*显示慢查询日志输出方式，即参数：log-output=FILE*/
show variables like '%output%'

/*显示慢查询日志位置*/
show variables like '%slow_query%'

/*显示慢查询的条数*/
show global status like '%slow%'