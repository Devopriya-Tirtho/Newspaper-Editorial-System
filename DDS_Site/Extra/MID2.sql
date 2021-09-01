--Created by G. M. Shahariar Shibli
clear screen;

--delete existing table
drop table Emp cascade constraints;
drop table Works cascade constraints;
drop table Dept cascade constraints;

--Create Emp, Works, Dept database
create table Emp(
eid     integer, 
ename   varchar2(30), 
age     integer, 
salary  integer, 
		PRIMARY KEY (eid)
);

create table Dept(
did    		integer, 
dname  		varchar2(30), 
budget 		integer,
managerid 	integer, 
			PRIMARY KEY(did)
);

create table Works(
eid   		integer, 
did   		integer, 
pct_time  	integer, 
			FOREIGN KEY(eid) REFERENCES Emp(eid), 
			FOREIGN KEY(did) REFERENCES Dept(did)
);

--Insert data into the Emp database
insert into Emp values(11,'Susan Martin',39,9699);
insert into Emp values(13,'Mary Johnson',44,4401);
insert into Emp values(16,'Robert Brown',28,3543);
insert into Emp values(17,'Linda Davis',26,2597);
insert into Emp values(18,'Michael Miller',62,10310);
insert into Emp values(20,'Matt Nelson',33,4899);

--Insert data into Dept database
insert into Dept values(1, 'Hardware', 1000, 11);
insert into Dept values(2, 'Operations', 5000, 13);
insert into Dept values(4, 'Marketing', 6000, 16);
insert into Dept values(5, 'Software', 6000, 17);
insert into Dept values(6, 'Production', 6000, 20);

--Insert data into Works database
insert into Works values(13, 2, 100);
insert into Works values(20, 2, 25);
insert into Works values(11, 1, 50);
insert into Works values(18, 1, 25);
insert into Works values(17, 4, 100);
insert into Works values(11, 5, 50);
insert into Works values(18, 5, 75);
insert into Works values(20, 6, 50);
insert into Works values(16, 6, 100);
--Trying to commit -_-
commit;

--Display all data from three databases
select * from Emp;
select * from Dept;
select * from Works;



 
 


