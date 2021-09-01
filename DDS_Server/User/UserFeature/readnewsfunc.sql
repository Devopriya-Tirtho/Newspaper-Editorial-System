set serveroutput on;
create or replace function readnewsfuntion(id IN News.nid@site_link%type,useridserver IN UserTable.userid@site_link%type)
	return integer
	AS
		newsarticle News.news_article@site_link%type;
		subscription_id Subscription.sid@site_link%type;
		
begin
select sid into subscription_id from UserTable@site_link
where userid=useridserver;

if subscription_id=1 then

	for r in (select news_article
	from National_News
	where nid=id) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
	

	
return 1;
	
elsif subscription_id=2 then
	for r in (select news_article
	from International_News
	where nid=id) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
		insert into User_Read_Record@site_link values(id,useridserver);

	end loop;
	
	
	return 1;
	
elsif subscription_id=3 then

	for r in (select news_article
	from Sports_News@site_link
	where nid=id) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
		insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
	
	

	return 1;
elsif subscription_id=4 then

	for r in (select news_article
	from National_News
	where nid=id) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
	
		for j in (select news_article
	from International_News
	where nid=id) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;


return 1;
	
elsif subscription_id=5 then
	for r in (select news_article
	from National_News
	where nid=id) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
		for j in (select news_article
	from Sports_News@site_link
	where nid=id) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;


	return 1;
elsif subscription_id=6 then
	for r in (select news_article
	from Sports_News@site_link
	where nid=id) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
		for j in (select news_article
	from International_News
	where nid=id) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;


	return 1;
elsif subscription_id=7 then
	for r in (select news_article
	from International_News
	where nid=id) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
		for j in (select news_article
	from Sports_News@site_link
	where nid=id) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
		for k in (select news_article
	from National_News
	where nid=id) loop
		newsarticle:=k.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
			insert into User_Read_Record@site_link values(id,useridserver);
	end loop;
	return 1;
	end if;
end readnewsfuntion;
/
