-- Creating tables for Winery-Analysis Database

create table wine_DB (
	country varchar,
	description varchar,
	designation varchar,
	points int,
	price int,
	province varchar,
	region_1 varchar,
	region_2 varchar,
	taster_name varchar,
	taster_twitter varchar,
	title varchar not null,
	variety varchar,
	winery varchar
);