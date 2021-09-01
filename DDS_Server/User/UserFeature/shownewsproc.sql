set serveroutput on;
create or replace procedure shownews(id IN UserTable.sid@site_link%type)
		AS
		newsid News.nid@site_link%type;
		newshead News.headline@site_link%type;
begin

	if id=1 then
	
	for r in (select nid,headline
	from National_News) loop
		newsid:=r.nid;
		newshead:=r.headline;
		
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
		
	end loop;
	
	elsif id=2 then
	
	for r in (select nid,headline
	from International_News) loop
		newsid:=r.nid;
		newshead:=r.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	elsif id=3 then
	
	for r in (select nid,headline
	from Sports_News@site_link) loop
		newsid:=r.nid;
		newshead:=r.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	elsif id=4 then
	
	for r in (select nid,headline
	from National_News) loop
		newsid:=r.nid;
		newshead:=r.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	for j in (select nid,headline
	from International_News) loop
		newsid:=j.nid;
		newshead:=j.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	elsif id=5 then
	
	for r in (select nid,headline
	from National_News) loop
		newsid:=r.nid;
		newshead:=r.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	for j in (select nid,headline
	from Sports_News@site_link) loop
		newsid:=j.nid;
		newshead:=j.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	elsif id=6 then
	
	for r in (select nid,headline
	from International_News) loop
		newsid:=r.nid;
		newshead:=r.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	for j in (select nid,headline
	from Sports_News@site_link) loop
		newsid:=j.nid;
		newshead:=j.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	elsif id=7 then
	
	for r in (select nid,headline
	from National_News) loop
		newsid:=r.nid;
		newshead:=r.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	for j in (select nid,headline
	from International_News) loop
		newsid:=j.nid;
		newshead:=j.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
	
	for k in (select nid,headline
	from Sports_News@site_link) loop
		newsid:=k.nid;
		newshead:=k.headline;
		DBMS_OUTPUT.PUT_LINE(newsid);
		DBMS_OUTPUT.PUT_LINE(newshead);
	end loop;
end if;
end shownews;
/
