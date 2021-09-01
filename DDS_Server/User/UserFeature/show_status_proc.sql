set serveroutput on;
create or replace procedure show_status(useridserver IN integer)
		AS
remaining_year float;
subscription_ended exception;
begin


select months_between(enddate,sysdate) into remaining_year from UserTable@site_link
where userid=useridserver;

if(remaining_year<0)then
delete from UserTable@site_link where userid=useridserver;
	raise subscription_ended;
end if;
dbms_output.put_line('Remaining Months for current subcription'||remaining_year);
	
	exception

		when subscription_ended then
			dbms_output.put_line('Your Subscription has ended and your account is deleted');	
end show_status;
/