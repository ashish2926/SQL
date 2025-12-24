select database ();
use world ;
-- distinct 
select distinct continent from country ;
select distinct continent , region from country;

select count(indepyear) from country;
select count(*) from country;
select count(population), sum(population), avg(population),
max(population), min(population) from country;

select count(continent), count(distinct continent) from country;

select count(indepyear), count(*) from country where continent = 'asia';

SELECT 
    COUNT(*) AS total_country,
    COUNT(DISTINCT region) AS total_region,
    AVG(lifeexpectancy) AS avg_life,
    SUM(population) AS total_population
FROM country
WHERE indepyear BETWEEN 1948 AND 1997;

-- 

SELECT
    COUNT(*) AS total_country,
    COUNT(DISTINCT region) AS unique_region,
    SUM(population) AS total_population,
    MAX(lifeexpectancy) AS highest_life_expectancy,
    COUNT(capital) AS total_capital
FROM country WHERE name LIKE 'A%' OR name LIKE 'D%';

select count(name), count(distinct region), sum(population),
sum(capital) from country where name like
'a%' or name like 'd%';

select * from country;
