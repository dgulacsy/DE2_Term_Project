-------------- Term project DE2
----------- OPERATIONAL LAYER
# Import csv
DROP SCHEMA IF EXISTS suicide_rates;
CREATE SCHEMA suicide_rates;
USE suicide_rates;
DROP TABLE IF EXISTS suicide_rates;
CREATE TABLE  suicide_rates
(country varchar(255),
year int,
sex VARCHAR(200),
age VARCHAR(200),
suicides_no bigint,
population bigint,
suicides_p100k decimal(5,2),
country_year VARCHAR(50),
HDI VARCHAR(100),
gdp VARCHAR(100),
gdppc bigint,
generation varchar(50),
PRIMARY KEY(country,year,sex,age));
#SHOW VARIABLES LIKE "secure_file_priv";
LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/suicide_rates.csv'
INTO TABLE suicide_rates
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(country,year,sex,age,suicides_no,population,suicides_p100k,country_year,HDI, gdp,gdppc,generation);


