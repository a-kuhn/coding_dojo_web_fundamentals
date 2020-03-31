-- 1. What query would you run to get all the countries that speak Slovene? Your query should return the name of the country, language and language percentage. Your query should arrange the result by language percentage in descending order. (1)
SELECT c.name, l.language, l.percentage
FROM countries c
JOIN languages l ON c.id = l.country_id
WHERE l.language = 'Slovene'
ORDER BY l.percentage DESC;


-- 2. What query would you run to display the total number of cities for each country? Your query should return the name of the country and the total number of cities. Your query should arrange the result by the number of cities in descending order. (3).   ***ERROR CODE 1140: something about sql_mode=only_full_group_by***
SELECT c.name, COUNT(cities.name) AS city_count
FROM countries as c
JOIN cities ON c.id = cities.country_id
GROUP BY c.name
ORDER BY city_count DESC;


-- 3. What query would you run to get all the cities in Mexico with a population of greater than 500,000? Your query should arrange the result by population in descending order. (1)
SELECT c.name, c.population
FROM countries co
JOIN cities c ON co.id = c.country_id
WHERE co.name = 'Mexico' AND c.population>500000
ORDER BY c.population DESC;


-- 4. What query would you run to get all languages in each country with a percentage greater than 89%? Your query should arrange the result by percentage in descending order. (1)
SELECT c.name, l.language, l.percentage
FROM countries c
JOIN languages l ON c.id = l.country_id
WHERE l.percentage > '89'
ORDER BY l.percentage DESC;


-- 5. What query would you run to get all the countries with Surface Area below 501 and Population greater than 100,000? (2)
SELECT c.name -- could add  c.surface_area, c.population to validate results
FROM countries c
WHERE c.surface_area<'501' AND c.population>'100000';


-- 6. What query would you run to get countries with only Constitutional Monarchy with a capital greater than 200 and a life expectancy greater than 75 years? (1)
SELECT c.name -- could add c.government_form, c.capital, and c.life_expectancy to validate results
FROM countries c
WHERE c.government_form = 'Constitutional Monarchy' AND c.capital>200 AND c.life_expectancy>75; 


-- 7. What query would you run to get all the cities of Argentina inside the Buenos Aires district and have the population greater than 500, 000? The query should return the Country Name, City Name, District and Population. (2)
SELECT c.name, ci.name, ci.district, ci.population
FROM countries c 
JOIN cities ci ON c.id = ci.country_id
WHERE c.name = 'Argentina' AND ci.district = 'Buenos Aires' AND ci.population > 500000;


-- 8. What query would you run to summarize the number of countries in each region? The query should display the name of the region and the number of countries. Also, the query should arrange the result by the number of countries in descending order. (2).    ***ERROR CODE 1140: something about sql_mode=only_full_group_by***
SELECT c.region, COUNT(c.name) AS country_count
FROM countries c
GROUP BY c.region
ORDER BY country_count DESC;


