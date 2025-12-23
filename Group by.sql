-- group by
use wrold;

select region, count(name), count(continent) from country group by region;
select region, avg(population) from country group  by region;

-- count cities which have a population of more than 1 lakh
-- where (sabse pehle execute) => group by => count()
select district, count(name) from city where Population > 100000 group by district;

select district, count(name) as totalcity from city group by district;


select * from country; 
select count(name) from country where continent='Aisa' and indepyear > 1950;

-- get total country which got indepyear after 1950 in each continent
select continent, count(name) from country where indepyear >1950 group by continent;

select continent, sum(population) from country group by continent;

select * from country;
-- where only filter the data be include in main table
-- difference between where and having close
-- WHERE is used to filter rows before grouping.
-- HAVING is used to filter groups after GROUP BY.
-- having filter data based on aggregate column like sum, count, max
select continent, sum(population) from country group by continent
having sum(population)>30401150;

select * from country;
select continent, sum(population) from country where lifeexpectancy > 35.0 group by continent;
-- you need to find out the total country for each goverment form where the total number country should be getter than 30
-- only for the country having there captial getter than 30 and total population getter than 300000

SELECT GOVERNMENTFORM, COUNT(NAME) FROM COUNTRY GROUP BY GOVERNMENTFORM
HAVING COUNT(NAME) > 30;

SELECT GOVERNMENTFORM, COUNT(NAME), SUM(POPULATION) FROM COUNTRY WHERE CAPITAL > 30 GROUP BY GOVERNMENTFORM
HAVING SUM(POPULATION) > 300000;
select continent,count(name) from country group by continent;

select continent,region, count(name) from country group by continent,region;

