/*创建数据库用户testmynawang，对test_tab数据库表所有的表有SELECT和INSERT操作权限*/
GRANT SELECT,INSERT ON test_db.* to 'testmynawang'@'localhost' identified by '123456';

/*查看帮助能提供什么查询*/
/*? contents;*/