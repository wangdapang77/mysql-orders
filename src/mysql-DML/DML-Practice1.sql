/*
DML(Data Manipulation Language)语句：数据操纵语句，用于添加、删除、更新和查询数据库记录，并检查数据完整性。
常用的语句关键字主要包括insert、delete、update和select等
*/

/*pra_table1内插入单条数据*/
insert into pra_table1(pra_name, pra_sub, pra_mark) values("张三","语文",81);

/*pra_table1内插入多条数据*/
insert into pra_table1(pra_name, pra_sub, pra_mark) values
("张三","数学",75),("李四","语文",76),("李四","数学",90),("王五","语文",81),
("王五","数学",100),("王五","英语",90);

/*查询pra_table1内数据*/
select * from pra_table1;

/*更新pra_table1表内的pra_id为1的pra_name*/
update pra_table1 set pra_name = '赵六' where pra_id = 1;

/*删除pra_table1表内，id为1的记录*/
delete from pra_table1 where pra_id = 1;
