/*
DCL(Data Control Language)语句：数据控制语句，用于控制不同数据段直接的许可和访问级别的语句。
这些语句定义了数据库、表、字段、用户的访问权限和安全级别。主要的语句关键字包括grant、revoke等。
*/



/*创建数据库用户testmynawang，对test_tab数据库表所有的表有SELECT和INSERT操作权限*/
GRANT SELECT,INSERT ON test_db.* to 'testmynawang'@'localhost' identified by '123456';

/*查看帮助能提供什么查询*/
/*? contents;*/