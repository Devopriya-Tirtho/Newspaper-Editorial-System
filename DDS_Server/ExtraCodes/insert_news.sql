create or replace function insert_news(p_section_news in News.section_news@site_link%type,
p_section_id in News.section_id@site_link%type,
p_status in News.status@site_link%type,
p_status_id in News.status_id@site_link%type,
p_genre in News.genre@site_link%type,
p_genre_id in News.genre_id@site_link%type,
p_news_date in News.news_date@site_link%type,
p_news in News.news_article@site_link%type,
p_headline in News.headline@site_link%type,
p_aid in News.aid@site_link%type)
return int
	is
	countval int:=0;
begin
if(countval!=0) then
	select max(nid) into countval from News@site_link;
	end if;
	countval:=countval+1;
	insert into News@site_link values(countval ,p_section_news, p_section_id,p_status,p_status_id,p_genre,p_genre_id,p_news_date,p_news,p_headline,p_aid);
return 1;
end insert_news;
/


