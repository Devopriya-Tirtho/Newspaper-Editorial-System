set serveroutput on;

declare
	
	admin_name Admin_Log.aname@site_link%type;
	
	serveradminname Admin_Log.aname@site_link%type;
	
	admin_pass Admin_Log.pass@site_link%type;
	
	serveradminpass Admin_Log.pass@site_link%type;
	count1 int:=0;

	
	insert_return integer;
	insert_admin integer;
	s_section_news News.section_news@site_link%type;
	s_section_id News.section_id@site_link%type;
	s_status News.status@site_link%type;
	s_status_id News.status_id@site_link%type;
	s_genre News.genre@site_link%type;
	s_genre_id News.genre_id@site_link%type;
	s_news_date News.news_date@site_link%type;
	s_news News.news_article@site_link%type;
	s_headline News.headline@site_link%type;
	s_aid News.aid@site_link%type;
	
	n int;
		
	login_error exception;
	invalid_option exception;
begin
	DBMS_OUTPUT.PUT_LINE('Admin Login Page');
	admin_name :='&Name';
	admin_pass :='&Password';
	
	for r in (select aid,aname,pass 
	from Admin_Log@site_link
	where aname=admin_name
	and pass=admin_pass) loop
	
	count1:=1;

	end loop;
	
	if (count1=1) then
	DBMS_OUTPUT.PUT_LINE('Login Succesful');
	DBMS_OUTPUT.PUT_LINE('Your Option: 1. Insert    2. Delete');
	insert_admin:=&choice;
		if(insert_admin=1) then
		
		DBMS_OUTPUT.PUT_LINE('Your Inputs');
		s_section_news :='&Section';
		s_section_id :=&SectionId;
		s_status :='&Status';
		s_status_id :=&StatusId;
		s_genre :='&GenreName';
		s_genre_id :=&GenreId;
		s_news_date :='&NewsDate';
		s_news :='&News';
		s_headline:='&Headline';
	
		select aid into s_aid from Admin_Log@site_link 
		where aname=admin_name;

		insert_return:=insert_news(s_section_news,s_section_id,s_status,s_status_id,
		s_genre,s_genre_id,
		s_news_date,s_news,s_headline,s_aid);
		
			if(insert_return=1) then
				DBMS_OUTPUT.PUT_LINE('Succesfully Inserted');
			end if;
			
		elsif(insert_admin=2) then
			n:=&nid;
			delete_news(n);
			
		elsif(insert_admin!=1 or insert_admin!=2) then
				raise invalid_option;
				
		end if;
	
	elsif(count1!=1) then
		raise login_error;
		
	end if;

	exception

		when login_error then
			dbms_output.put_line('Login Error');
		when invalid_option then
			dbms_output.put_line('Invalid Option');
end;
/