set serveroutput on;
create or replace procedure ratenews(id IN News.nid@site_link%type,useridserver IN integer)
		AS
		rating_number integer:=&Rating;
		scid integer;
begin
	
	insert into User_Rating_Record@site_link values(id,useridserver,rating_number);
	
	
	update News@site_link
	set rating =(select avg(User_Rating_Record.rating@site_link) 
	from User_Rating_Record@site_link, News@site_link
	where News.nid@site_link=User_Rating_Record.nid@site_link
	group by User_Rating_Record.nid@site_link)
	where News.nid@site_link=id;
	
	select section_id into scid
	from News@site_link where News.nid@site_link=id;
	
	
	if scid=1 then
	update National_News
	set rating =(select News.rating@site_link
	from National_News, News@site_link
	where News.nid@site_link=National_News.nid)
	where National_News.nid=id;
	
	elsif scid=2 then
	update International_News
	set rating =(select News.rating@site_link
	from International_News, News@site_link
	where News.nid@site_link=International_News.nid)
	where International_News.nid=id;
	
	elsif scid=3 then
	update Sports_News@site_link
	set rating =(select News.rating@site_link
	from Sports_News@site_link, News@site_link
	where News.nid@site_link=Sports_News.nid@site_link)
	where Sports_News.nid@site_link=id;
	end if;
end ratenews;
/