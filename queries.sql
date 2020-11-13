-- Create tables for raw data to be loaded into
CREATE TABLE customer_name (
id INT PRIMARY KEY,
first_name TEXT,
last_name TEXT
);

CREATE TABLE customer_location (
id INT PRIMARY KEY,
address TEXT,
us_state TEXT
);


-- Joins tables
SELECT customer_name.id, customer_name.first_name, customer_name.last_name, customer_location.address, customer_location.us_state
FROM customer_name
JOIN customer_location
ON customer_name.id = customer_location.id;
----------------------------------------------------------------
CREATE TABLE listing (
id INT PRIMARY KEY,
country_id INT,
city_id INT,
listing_name VARCHAR, 
property_type VARCHAR, 
location_name VARCHAR, 
host_name VARCHAR, 
capacity INT, 
bedrooms float,
beds INT,
price float, 
price_weekly float, 
price_montly float, 
deposit float,
cleaning_fee float, 
min_nights INT,
max_nights INT, 
number_reviews INT, 
review_rating INT, 
listing_url VARCHAR, 
);

CREATE TABLE reviews (
id INT PRIMARY KEY ,
listing_id VARCHAR, 
date VARCHAR, 
comment_id VARCHAR
);

CREATE TABLE city (
id INT PRIMARY KEY,
listing_id VARCHAR,
city_name VARCHAR,
country_name VARCHAR,
population INT,
GDP_per_capita FLOAT
);


CREATE TABLE country(
id INT PRIMARY KEY,
listing_id VARCHAR,
country_id VARCHAR,
country_name VARCHAR,
population INT,
GDP_per_capita FLOAT
);
