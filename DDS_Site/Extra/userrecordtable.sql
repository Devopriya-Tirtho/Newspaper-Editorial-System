drop table User_Read_Record Cascade constraints;

create table User_Read_Record(
nid   		integer, 
userid  	integer, 
			FOREIGN KEY(nid) REFERENCES News(nid),
			FOREIGN KEY(userid) REFERENCES UserTable(userid)
);

commit;