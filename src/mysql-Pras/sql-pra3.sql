/*
一个叫team 的表，里面只有一个字段name, 一共有4 条纪录，分别是a,b,c,d, 对应四个球对，
现在四个球对进行比赛，用一条sql 语句显示所有可能的比赛组合.
*/

/*创建team表*/
create table team(
  name varchar(50)
)engine=innodb default charset=utf8;

/*加入4条记录*/
insert into team values("a"),("b"),("c"),("d");

/*找出上述要求的记录，根据字母排序的方式找出记录【巧妙】*/
select a.name,b.name from team a,team b where a.name<b.name

