set serveroutput on;
create or replace procedure payrise(id IN UserTable.sid@site_link%type)
		AS
		prevsal int:=0;
begin
	
	if id=1 then
	select salary into prevsal from Admin_Log@site_link
	where aid=1;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=1;
	select salary into prevsal from Admin_Log@site_link
	where aid=2;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=2;
		select salary into prevsal from Admin_Log@site_link
	where aid=3;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=3;
	
	elsif id=2 then
		select salary into prevsal from Admin_Log@site_link
	where aid=1;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=1;
		select salary into prevsal from Admin_Log@site_link
	where aid=2;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=2;
		select salary into prevsal from Admin_Log@site_link
	where aid=3;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=3;
	
	elsif id=3 then
		select salary into prevsal from Admin_Log@site_link
	where aid=1;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=1;
		select salary into prevsal from Admin_Log@site_link
	where aid=2;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=2;
		select salary into prevsal from Admin_Log@site_link
	where aid=3;
	update Admin_Log@site_link
	set salary=prevsal+300
	where aid=3;

	elsif id=4 then
		select salary into prevsal from Admin_Log@site_link
	where aid=1;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=1;
		select salary into prevsal from Admin_Log@site_link
	where aid=2;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=2;
		select salary into prevsal from Admin_Log@site_link
	where aid=3;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=3;	

	
	elsif id=5 then
		select salary into prevsal from Admin_Log@site_link
	where aid=1;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=1;
		select salary into prevsal from Admin_Log@site_link
	where aid=2;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=2;
		select salary into prevsal from Admin_Log@site_link
	where aid=3;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=3;	

	
	elsif id=6 then
		select salary into prevsal from Admin_Log@site_link
	where aid=1;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=1;
		select salary into prevsal from Admin_Log@site_link
	where aid=2;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=2;
		select salary into prevsal from Admin_Log@site_link
	where aid=3;
	update Admin_Log@site_link
	set salary=prevsal+500
	where aid=3;	

	
	elsif id=7 then
		select salary into prevsal from Admin_Log@site_link
	where aid=1;
	update Admin_Log@site_link
	set salary=prevsal+800
	where aid=1;
		select salary into prevsal from Admin_Log@site_link
	where aid=2;
	update Admin_Log@site_link
	set salary=prevsal+800
	where aid=2;
		select salary into prevsal from Admin_Log@site_link
	where aid=3;
	update Admin_Log@site_link
	set salary=prevsal+800
	where aid=3;	

end if;
end payrise;
/
