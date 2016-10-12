/*删除表pra_table2*/
drop table pra_table2;

/*创建表pra_table2*/
create table pra_table2 (
    pra_id int(11) not null auto_increment,
    pra_cardnum varchar(50),
    pra_name varchar(50),
    pra_subnum varchar(50),
    pra_subname varchar(50),
    pra_submark int(11),
    primary key(pra_id)
)engine=innodb default charset=utf8;

/*pra_table2中添加记录*/
insert into pra_table2 (pra_cardnum, pra_name, pra_subnum, pra_subname, pra_submark) values
("200501", "张三", "0001", "数学", "69"),("200502", "李四", "0001", "数学", "89"),("200501", "张三", "0001", "数学", "69");



/*删除除了pra_id不同, 其他都相同的学生冗余信息  是冗余信息*/
/*
问题语句：
语句1存在问题： You can't specify target table 'pra_table2' for update in FROM clause
不能先select出同一表中的某些值，再update这个表(在同一语句中)，也就是说将select出的结果再通过中间表select一遍，
这样就规避了错误。注意，这个问题只出现于mysql，mssql和oracle不会出现此问题。
*/
delete from pra_table2 where pra_id not in (
  select min(pra_id) from pra_table2 group by pra_cardnum, pra_name, pra_subnum, pra_subname, pra_submark
);

/*将select出的结果再通过中间表select一遍，这样就规避了错误*/
delete from pra_table2 where pra_id not in (
  select * from (
    select min(pra_id) from pra_table2 group by pra_cardnum, pra_name, pra_subnum, pra_subname, pra_submark
  ) as sl1
);