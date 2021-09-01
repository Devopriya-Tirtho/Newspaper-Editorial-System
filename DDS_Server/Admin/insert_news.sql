create or replace function insert_news(p_section_news in News.section_news@site_link%type,
p_section_id in News.section_id@site_link%type,
p_status in News.status@site_link%type,
p_status_id in News.status_id@site_link%type,
p_genre in News.genre@site_link%type,
p_genre_id in News.genre_id@site_link%type,
p_news_date in News.news_date@site_link%type,
p_news in News.news_article@site_link%type,
p_headline in News.headline@site_link%type,
p_aid in News.aid@site_link%type,
p_rating in News.rating@site_link%type)
return int
	is
	countval int:=0;
	prevsal int:=0;
begin

	
	insert into News@site_link (section_news,section_id,status,status_id,genre,genre_id,
	news_date,news_article,headline,aid,rating) values(p_section_news, p_section_id,
	p_status,p_status_id,p_genre,p_genre_id,p_news_date,p_news,p_headline,p_aid,p_rating);
	
	select max(nid) into countval from News@site_link;
	
	if p_section_id=1 then
	
	insert into National_News values(countval,p_section_news, p_section_id,
	p_status,p_status_id,p_genre,p_genre_id,p_news_date,p_news,p_headline,p_aid,p_rating);
	
	elsif p_section_id=2 then
	
	insert into International_News values(countval,p_section_news, p_section_id,
	p_status,p_status_id,p_genre,p_genre_id,p_news_date,p_news,p_headline,p_aid,p_rating);
	
	elsif p_section_id=3 then
	
	insert into Sports_News@site_link values(countval,p_section_news, p_section_id,
	p_status,p_status_id,p_genre,p_genre_id,p_news_date,p_news,p_headline,p_aid,p_rating);	 
	
	end if;
	
	
	select salary into prevsal from Admin_Log@site_link
	where aid=p_aid;
	
	update Admin_Log@site_link
	set salary=prevsal+500 
	where aid=p_aid;
	
return 1;
end insert_news;
/


