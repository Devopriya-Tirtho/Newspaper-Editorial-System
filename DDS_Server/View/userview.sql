create or replace view UserData as
select U.name, U.startdate, U.enddate,U.sid,R.nid
from UserTable@site_link U, User_Read_Record@site_link R
where U.userid = R.userid;

select * from UserData;

commit;
