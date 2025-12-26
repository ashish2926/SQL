select name,population,case 
when population = 0 then 'No Popualtion'
when population between 8000 and 70000 then 'Med population'
else 'Conditon is false'
end  as 'Status' from world.country;
select count(*),
case 
when population = 0 then 'No Popualtion'
when population between 8000 and 70000 then 'Med population'
else 'Conditon is false'
end  as 'Status' from world.country group by status;