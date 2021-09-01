set serveroutput on;


create or replace procedure delete_news(n_number IN integer)
		IS
begin
	
	Delete from News@site_link
	where nid=n_number;
	
	Delete from National_News
	where nid=n_number;
	Delete from International_News
	where nid=n_number;
		Delete from Sports_News@site_link
	where nid=n_number;
end delete_news;
/
