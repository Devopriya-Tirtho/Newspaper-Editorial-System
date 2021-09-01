clear screen;

--delete existing table



drop table Admin_Log cascade constraints;

drop table News cascade constraints;

drop table Subscription cascade constraints;

drop table UserTable cascade constraints;

drop table User_Rating_Record cascade constraints;
drop table User_Read_Record cascade constraints;


--Create Emp, Works, Dept database
create table Admin_Log(
aid     integer, 
aname   varchar2(30), 
pass	varchar2(30),
salary integer,
		PRIMARY KEY (aid)
);



create table News(
nid integer,
section_news varchar(20),
section_id integer,
status varchar(20),
status_id integer,
genre varchar(20),
genre_id integer,
news_date varchar(30),
news_article varchar(2000),
headline varchar(100),
aid integer,
rating integer,
primary key (nid),
FOREIGN KEY(aid) REFERENCES Admin_Log(aid)
);



create table Subscription(
sid   		integer, 
bill   		integer, 
sname	varchar(30),
primary key(sid)
);

create table UserTable(
userid   		integer, 
upass   		varchar(20), 
sid  	integer, 
name varchar(20),
startdate date,
enddate date,
primary key(userid),
			FOREIGN KEY(sid) REFERENCES Subscription(sid)
);



create table User_Read_Record(
nid   		integer, 
userid  	integer, 
			FOREIGN KEY(nid) REFERENCES News(nid),
			FOREIGN KEY(userid) REFERENCES UserTable(userid)
);

create table User_Rating_Record(
nid   		integer, 
userid  	integer, 
rating 		integer,
			FOREIGN KEY(nid) REFERENCES News(nid),
			FOREIGN KEY(userid) REFERENCES UserTable(userid)
);




drop sequence auto;
Create sequence auto
minvalue 1
start with 1
increment by 1
cache 100;

--Insert data into the Admin_Log database
insert into Admin_Log values(1,'Tirtho','tirtho01',0);
insert into Admin_Log values(2,'Showmik','showmik02',0);
insert into Admin_Log values(3,'Nagib','nagib03',0);

--Insert data into the Subscription database
insert into Subscription values(1,1000,'National');
insert into Subscription values(2,1000,'International');
insert into Subscription values(3,1000,'Sports');
insert into Subscription values(4,2000,'N-I');
insert into Subscription values(5,2000,'N-S');
insert into Subscription values(6,2000,'I-S');
insert into Subscription values(7,3000,'N-I-S');

--Trying to commit -_-
commit;
----Selection from admin table
select * from Admin_Log;

select * from News;