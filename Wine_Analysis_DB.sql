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

-- Sorting data into different tables grouped by relevant information.

-- Wine grouped by variety
select title, variety
into wine_by_variety
from wine_db;

select * from wine_by_variety;

-- Wine grouped by description
select title, description
into wine_by_description
from wine_db;

select * from wine_by_description;

-- Wine grouped by score
select title, points
into wine_by_score
from wine_db;

select * from wine_by_score;

-- Wine grouped by price
select title, price
into wine_by_price
from wine_db;

select * from wine_by_price;

-- Wine grouped by location
select title, country, province, region_1, region_2, winery, designation
into wine_by_location
from wine_db;

select * from wine_by_location;

-- Wine grouped by taster info
select title, taster_name, taster_twitter, points
into wine_by_taster_info
from wine_db;

select * from wine_by_taster_info;
