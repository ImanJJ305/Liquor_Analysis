-- Creating tables for Winery-Analysis Database

create table wine_DB (
	country varchar not null,
	description varchar not null,
	designation varchar not null,
	points int not null,
	price int not null,
	province varchar not null,
	region_1 varchar not null,
	region_2 varchar not null,
	taster_name varchar not null,
	taster_twitter varchar not null,
	title varchar not null,
	variety varchar not null,
	winery varchar not null,
	primary key (title)
);