set serveroutput on;
create or replace procedure shownews(id IN UserTable.sid@site_link%type)
		AS
		newsarticle News.news_article@site_link%type;
begin

	if id=1 then
	
	for r in (select news_article
	from National_News
	where rating>3) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	elsif id=2 then
	
	for r in (select news_article
	from International_News
	where rating>3) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	elsif id=3 then
	
	for r in (select news_article
	from Sports_News@site_link
	where rating>3) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	elsif id=4 then
	
	for r in (select news_article
	from National_News
	where rating>3) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	for j in (select news_article
	from International_News
	where rating>3) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	elsif id=5 then
	
	for r in (select news_article
	from National_News
	where rating>3) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	for j in (select news_article
	from Sports_News@site_link
	where rating>3) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	elsif id=6 then
	
	for r in (select news_article
	from International_News
	where rating>3) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	for j in (select news_article
	from Sports_News@site_link
	where rating>3) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	elsif id=7 then
	
	for r in (select news_article
	from National_News
	where rating>3) loop
		newsarticle:=r.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	for j in (select news_article
	from International_News
	where rating>3) loop
		newsarticle:=j.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
	
	for k in (select news_article
	from Sports_News@site_link
	where rating>3) loop
		newsarticle:=k.news_article;

		DBMS_OUTPUT.PUT_LINE(newsarticle);
	end loop;
end if;
end shownews;
/
