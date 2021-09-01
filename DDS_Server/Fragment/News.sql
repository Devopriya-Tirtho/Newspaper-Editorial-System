drop table National_News cascade constraints;
drop table International_News cascade constraints;
create table National_News(
nid integer,
section_news varchar(20),
section_id integer,
status varchar(20),
status_id integer,
genre varchar(20),
genre_id integer,
news_date varchar(30),
news_article varchar(2000),
headline varchar(100),
aid integer,
rating integer,
primary key (nid)
);

create table International_News(
nid integer,
section_news varchar(20),
section_id integer,
status varchar(20),
status_id integer,
genre varchar(20),
genre_id integer,
news_date varchar(30),
news_article varchar(2000),
headline varchar(100),
aid integer,
rating integer,
primary key (nid)
);


commit;