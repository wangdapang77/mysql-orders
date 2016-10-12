/*显示数据库*/
show databases;

/*创建数据库*/
create database sql_pra1;

/*使用数据库sql_pra1*/
use sql_pra1

/*创建表pra_table1*/
create table pra_table1
(
    pra_id int(11) not null auto_increment,
    pra_name varchar(50),
    pra_sub varchar(50),
    pra_mark int(11),
    primary key(pra_id)
) engine=innodb default charset=utf8;

/*pra_table1内插入单条数据*/
insert into pra_table1(pra_name, pra_sub, pra_mark) values("张三","语文",81);

/*pra_table1内插入多条数据*/
insert into pra_table1(pra_name, pra_sub, pra_mark) values("张三","数学",75),
("李四","语文",76),("李四","数学",90),("王五","语文",81),("王五","数学",100),("王五","英语",90);


/*用一条SQL 语句 查询出每门课都大于80 分的学生姓名*/
/*方法1：(根据pro_name进行分组，再根据min(pra_mark) > 80进行比较)*/
select * from pra_table1 group by pra_name having min(pro_mark) > 80;
/*方法2：找出pra_mark < 80的pra_name，再根据pra_name not in 刚才的记录进行筛选*/
select distinct pra_name from pra_table1 where pra_name not in (
  select distinct pra_name from pra_table1 where pra_mark < 80
);
