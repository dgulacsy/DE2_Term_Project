-------------- Term project DE2
----------- OPERATIONAL LAYER
-------- Import data from txt files
-- Import first txt file
drop schema if exists term_project_Suicide_rate;
create	schema term_project_Suicide_rate;
use term_project_Suicide_rate;
DROP TABLE IF exists Suicide_rate;
CREATE TABLE  Suicide_rate
(country varchar(100),
year int,
sex VARCHAR (200),
age VARCHAR(200),
suicides_no bigint,
population bigint,
`suicides/100k_po` decimal (5,2),
country_year VARCHAR(50),
HDI varchar(50),
gdp_for_year_$ VARCHAR(100),
gdp_per_capita_$ bigint,
generation varchar(50),
PRIMARY KEY(country,year,sex,age));
SHOW VARIABLES LIKE "secure_file_priv";
LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Suicide_rate_DE2.txt'
INTO TABLE Suicide_rate
CHARACTER SET latin1
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\r'
IGNORE 1 ROWS;
suicide_rate