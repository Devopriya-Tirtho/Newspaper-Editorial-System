set serveroutput on;

declare
	s_upass UserTable.upass@site_link%type;
	
	s_name UserTable.name@site_link%type;
	readnewsval integer:=0;
	count1 int:=0;
	count2 int:=0;
	subs_id int;
	useridserver integer;
	choice int;
	choose_news int;
	login_error exception;
	no_valid_news exception;
wrong_try exception;
begin
/* 1 for showing all news
2 for showing breaking news
*/
	s_upass :='&Pass';
	s_name :='&Name';
	choice :=&YourChoice;
	choose_news:=&NewsID;
	
	
	for r in (select userid 
	from UserTable@site_link
	where name=s_name
	and upass=s_upass) loop
	
	
	useridserver:=r.userid;
	count1:=1;

	end loop;
	
	if (count1=1) then
	
	DBMS_OUTPUT.PUT_LINE('Login Succesful');
	
	for r in (select nid 
	from News@site_link
	where nid=choose_news) loop
	
	count2:=1;
	end loop;
	
	if count2=1 then 
	if (choice=1) then
	
	readnewsval:=readnewsfuntion(choose_news,useridserver);
	if(readnewsval!=1)then
	raise wrong_try;
	end if;
	elsif(choice=2) then
	ratenews(choose_news,useridserver);
	end if;
	else 
	raise no_valid_news;
	end if;
	
	
	elsif(count1!=1) then
		raise login_error;
	
	end if;
	
	exception

		when login_error then
			dbms_output.put_line('Login Error');

	when no_valid_news then
			dbms_output.put_line('Invalid option');
	when wrong_try then
			dbms_output.put_line('You are not subscribed to see that news');

end;
/