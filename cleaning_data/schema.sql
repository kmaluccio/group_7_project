-- USE JOIN TO MERGE THE TWO TABLES WITH PRIMARY KEY AS CITY
-- Query to add diabetes data to our air quality data
SELECT a.city, a.pm25, a.pm10, a.population, a.color_pm10, a.color_pm25, d.uniquezip, d.state, d.data_value_type, d.data_value, d.low_confidence_limit, d.high_confidence_limit
INTO merged_air_dia
FROM air_quality AS a
LEFT JOIN diabetes AS d
ON (a.city = d.city);

SELECT * FROM merged_air_dia; -- this shows the table that was created when we merged

-- Query to add asthma data to our air quality data
SELECT a.city, a.pm25, a.pm10, a.population, a.color_pm10, a.color_pm25, d.uniquezip, d.state, d.data_value_type, d.data_value
INTO merged_air_asthma
FROM air_quality AS a
LEFT JOIN asthma AS d
ON (a.city = d.city);

SELECT * FROM merged_air_asthma;