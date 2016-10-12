/*登录命令*/
/*mysql -uroot -p123456;*/

/*显示数据库*/
show databases;

/*创建数据库*/
create database sql_pra1;

/*使用数据库sql_pra1*/
use sql_pra1;

/*创建表pra_table1*/
create table pra_table1
(
  pra_id int(11) not null auto_increment,
  pra_name varchar(50),
  pra_sub varchar(50),
  pra_mark int(11),
  primary key(pra_id)
) engine=innodb default charset=utf8;

/*删除表pra_table2*/
drop table pra_table2;


