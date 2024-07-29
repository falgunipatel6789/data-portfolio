use world;
# Task 1 the number of cities in the USA​
select count(Name) from city
where countrycode like 'USA';
# Task 2 the population and average life expectancy for people in Argentina (ARG) is.​
select sum(population) as total_population, 
avg(lifeExpectancy)  as average_lifeExpectancy from country
where code like 'ARG';
# Task 3 country has the highest life expectancy
select name,lifeExpectancy 
from country
where lifeExpectancy is not null
order by lifeExpectancy desc
limit 1;
# Task 4 25 cities around the world that start with the letter 'F' in a single SQL query.​
select city.Name as city_name, country.Name as country_name 
from city inner join country 
on   country.code = city.countrycode
where city.name like 'F%'
LIMIT 25;
# OR Task 4
select name ,countrycode from city
where name like 'F%'
LIMIT 25;
# Task 5 to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​
select ID, Name,Population from city
limit 10;
# Task 6  to find only those cities from city table whose population is larger than 2000000.​
select name, population from city
where population > 2000000 
order by population;
# Task 7 all city names from city table whose name begins with “Be” prefix.​
select name from city
where name like 'Be%';
# Task 8 only those cities from city table whose population is between 500000-1000000.​
select name, population from city
where population between 500000 and 1000000
order by population;
# Task 9 a city with the lowest population in the city table.​
select name, population from city
where population is not null
order by population
limit 1;
# BONUS
# 1  the capital of Spain (ESP).​
select capital,name  from country
where code like'ESP';
#2 all the languages spoken in the Caribbean region.​
select region,language from country inner join countrylanguage
on countrylanguage.countrycode = country.code
where region like 'Caribbean';
#3 ​
select city.name,continent,city.countrycode from city inner join country
on  country.code = city.countrycode
where continent like 'Europe';
# OR ​
select countrycode,name from city
where countrycode in 
(select code from country where continent like 'Europe')
order by countrycode  ;



