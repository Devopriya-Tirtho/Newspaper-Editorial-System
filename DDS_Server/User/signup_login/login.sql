set serveroutput on;

declare
	s_upass UserTable.upass@site_link%type;
	
	s_name UserTable.name@site_link%type;
	
	count1 int:=0;
	
	subs_id int;
	
	choice int;
	
	login_error exception;
	
begin
/* 1 for showing all news
2 for showing breaking news
3 for top rated news
4 for classified news feed
5 for showing up the status of subscription

*/
	s_upass :='&Pass';
	s_name :='&Name';
	choice :='&YourChoice';
	useridserver integer;
	for r in (select name,upass 
	from UserTable@site_link
	where name=s_name
	and upass=s_upass) loop
	
	count1:=1;

	end loop;
	
	if (count1=1) then
	
	DBMS_OUTPUT.PUT_LINE('Login Succesful');
	
	select sid into subs_id 	
	from UserTable@site_link
	where name=s_name
	and upass=s_upass;
	select userid into useridserver 	
	from UserTable@site_link
	where name=s_name
	and upass=s_upass;
	
	
	if (choice=1) then
	
	shownews(subs_id);
	
	elsif(choice=2) then
	
	showbreakingnews(subs_id);
	
		elsif(choice=3) then
		
	showtopratednews(subs_id,useridserver);
	
		elsif(choice=4) then
		
	preference_proc(subs_id);
	
		elsif(choice=5) then
		
	show_status(useridserver);
	
	end if;
	
	
	
	
	elsif(count1!=1) then
		raise login_error;
	
	end if;
	
	exception

		when login_error then
			dbms_output.put_line('Login Error');


end;
/