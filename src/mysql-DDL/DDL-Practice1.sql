/*
DDL(Data Definition Languages)语句：数据定义语言，这些语句定义了不同的数据段、
数据库、表、列、索引等数据库对象的定义。常用的语句关键字主要包括create、drop、alter等。
*/

/*登录命令*/
/*mysql -uroot -p123456;*/

/*显示数据库*/
show databases;

/*创建数据库*/
create database sql_pra1;

/*删除名为test_db的数据库（删除前一定要记得先备份！！！）*/
drop database test_db;

/*使用数据库sql_pra1*/
use sql_pra1;

/*
CREATE TABLE tablename(
  column_name_1 column_type_1 constraints,
  column_name_2 column_type_2 constraints,
  ...
  column_name_n column_type_n constraints);

// Mysql的表名是以目录的形式存在磁盘上的，所以表名的字符可以用任何目录允许的字符
// column_name: 列的名字
// column_type: 列的数据类型
// constraints: 列的约束条件*/

/*创建表pra_table1*/
create table pra_table1
(
  pra_id int(11) not null auto_increment,
  pra_name varchar(50),
  pra_sub varchar(50),
  pra_mark int(11),
  primary key(pra_id)
) engine=innodb default charset=utf8;

/*查看创建表的语句*/
/*
SHOW CREATE table pra_table1 \G;
*/

/*删除表pra_table2*/
drop table pra_table2;

/*查看表结构*/
desc pra_table2;
describe pra_table2;
show columns from pra_table2;
explain pra_table2;

/*修改表类型*/
/*
ALTER TABLE tablename MODIFY[COLUMN] column_definition [FIRST|AFTER col_name]
*/
/*修改表的字段的数据类型*/
ALTER TABLE pra_table1 modify pra_mark varchar(50);

/*新增表字段*/
/*
ALTER TABLE tablename ADD[COLUMN] column_definition [FIRST | AFTER col_name];
*/
/*新增一个字段*/
ALTER TABLE pra_table1 ADD column pra_mark2 int(2);

/*删除表字段*/
/*
ALTER TABLE tablename DROP[COLUMN] column_name
*/
/*删除表字段*/
ALTER TABLE pra_table1 DROP pra_mark2;

/*修改字段名*/
/*
ALTER TABLE tablename CHANGE[COLUMN] old_colname column_definition [FIRST|AFTER colname]
*/
/*修改字段名*/
ALTER TABLE pra_table1 CHANGE pra_mark pra_mark2 int(4);

/*change和modify都可以修改表的定义，不同的是change后面需要写两次列名，不方便，但是change的优点是可以修改列名称，modify不能。*/


/*修改字段排列顺序*/
/*
AFTER column_name; column_name FIRST
*/
/*新增pra_mark2排在pra_mark后面*/
ALTER TABLE pra_table1 ADD pra_mark2 int(11) AFTER pra_mark;

/*调整pra_mark到pra_mark2之后*/
ALTER TABLE pra_table1 MODIFY pra_mark int(2) AFTER pra_mark2;

/*将pra_mark2移动到最上面*/
ALTER TABLE pra_table1 MODIFY pra_mark2 decimal(14,2) FIRST;

/*更改表名*/
/*
ALTER TABLE tablename RENAME[TO] new_tablename
*/
ALTER TABLE pra_table1 RENAME TO test_pra_table1;
