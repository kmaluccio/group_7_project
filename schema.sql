-- Raw data was cleaned in Python and then uploaded to tables in SQL database before joining together
-- stored locally in pgAdmin

-- Run the next line to check that the table was created currectly
SELECT * FROM air_quality;
-- name what columns we want: country, city, pm10, Year, pm25, latitude, longitude, population, date_compiled, color_pm25, color_pm10
-- COLOR RANGES for US: pm25 - green = <10; yellow = 10-15; orange = 15-25
-- COLOR RANGES for US: pm10 - green = <20; yellow = 20-30; darkred = 30-50; orange = 50-70; red = 70-100

SELECT * FROM diabetes;
-- columns to keep: Year, StateDesc, CityName, UniqueID, Data_Value_Type, Data_Value, Low_Confidence_Limit, High_Confidence_Limit, PopulationCount, GeoLocation

-- USE JOIN TO MERGE THE TWO TABLES WITH PRIMARY KEY AS CITY

SELECT a.city, a.pm25, a.pm10, a.population, a.color_pm10, a.color_pm25, d.population_count, d.data_value
INTO merged_air_dia
FROM air_quality AS a
LEFT JOIN diabetes AS d
ON (a.city = d.city)
ORDER BY d.population_count; -- do not need to order this

SELECT * FROM merged_air_dia; -- this shows the table that was created when we merged

-- create CSV for connecting data to Tableau
-- COPY merged_air_dia TO 'Users/Kelly/Documents/Data_Analytics_BootCamp/merged_air_dia.csv' DELIMITER ',' CSV HEADER;

-- Creating tables for database
-- create table for the WHO air quality data
-- CREATE TABLE air_quality (
-- 	country VARCHAR(20) NOT NULL,
-- 	city VARCHAR(20) NOT NULL,
-- 	pm10 INT NOT NULL,
-- 	year INT(4) NOT NULL,
-- 	pm25 INT NOT NULL,
-- 	latitude INT NOT NULL,
-- 	longitude INT NOT NULL,
--     population INT NOT NULL,
-- 	date_compiled DATE NOT NULL, -- change to INT(4) since it is only the year
-- 	color_pm25 VARCHAR NOT NULL,
-- 	color_pm10 VARCHAR NOT NULL,
-- 	PRIMARY KEY (city),
-- 	--UNIQUE (city) --maybe we do not need the unique here
-- );

-- -- create the table for the diabetes data
-- CREATE TABLE diabetes (
-- 	Year INT(4) NOT NULL,
-- 	StateDesc VARCHAR NOT NULL,
-- 	CityName VARCHAR(20) NOT NULL,
-- 	UniqueID INT,
-- 	Data_Value_Type VARCHAR,
-- 	Data_Value INT NOT NULL,
-- 	Low_Confidence_Limit INT,
--     High_Confidence_Limit INT,
-- 	PopulationCount INT NOT NULL,
-- 	GeoLocation INT,
-- 	PRIMARY KEY (CityName)
-- );

-- -- determine which columns we want in the cancer table
-- CREATE TABLE cancer (
-- 	CityName VARCHAR(20) NOT NULL,
-- 	--from_date DATE NOT NULL,
-- 	--FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- 	PRIMARY KEY (CityName)
-- );