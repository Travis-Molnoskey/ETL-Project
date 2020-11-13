
----------------------------------------------------------------
DROP TABLE IF EXISTS listing CASCADE;

CREATE TABLE listing (
listing_id INT PRIMARY KEY,
country_id INT,
city_id INT,
listing_name VARCHAR, 
property_type VARCHAR, 
location_name VARCHAR, 
host_name VARCHAR, 
capacity INT, 
bedrooms float,
beds float,
price float, 
price_weekly float, 
price_montly float, 
deposit float,
cleaning_fee float, 
minimum_nights INT,
maximum_nights INT, 
number_of_reviews INT, 
review_rating float, 
listing_url VARCHAR
);


DROP TABLE IF EXISTS reviews CASCADE;

CREATE TABLE reviews (
id INT PRIMARY KEY ,
listing_id VARCHAR, 
date VARCHAR, 
comments VARCHAR
);


DROP TABLE IF EXISTS city CASCADE;

CREATE TABLE city (
id INT PRIMARY KEY,
city_name VARCHAR,
country_id INT,
population INT
);


DROP TABLE IF EXISTS country CASCADE;

CREATE TABLE country(
id INT PRIMARY KEY,
country_name VARCHAR,
population INT,
GDP_per_capita FLOAT
);