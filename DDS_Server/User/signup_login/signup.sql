set serveroutput on;

declare

	s_user_id UserTable.userid@site_link%type;
	s_upass UserTable.upass@site_link%type;
	s_sid UserTable.sid@site_link%type;
	s_name UserTable.name@site_link%type;


	flag int:=0;
	username_taken exception;
	invalid_subscription exception;
begin

		DBMS_OUTPUT.PUT_LINE('Your Inputs');
		
		s_upass :='&Pass';
		s_sid :=&SubscriptionId;
		s_name :='&Name';
	for r in (select name
	from UserTable@site_link
	where name=s_name) loop
	flag:=1;
	end loop;
	
	if flag=1 then 
		raise username_taken;
	
	elsif flag=0 then
	if(s_sid=1 or s_sid=2 or s_sid=3 or s_sid=4 or s_sid=5 or s_sid=6 or s_sid=7) then
	insert into UserTable@site_link (upass,sid,name,startdate,enddate) values(s_upass, s_sid,s_name,sysdate,
	add_months(sysdate,12));
	payrise(s_sid);
	
	else
		raise invalid_subscription;
		end if;
	end if;
	
	exception

		when username_taken then
			dbms_output.put_line('User name already exists');
		when invalid_subscription then
			dbms_output.put_line('Dear Sir/Mam, Our package numbers are 1,2,3,4,5,6 and 7');


end;
/