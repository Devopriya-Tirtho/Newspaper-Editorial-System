set serveroutput on;


create or replace procedure delete_news(n_number IN News.nid@site_link%TYPE)
		IS
begin
	
	Delete from News@site_link
	where nid=n_number;
		
end delete_news;
/
