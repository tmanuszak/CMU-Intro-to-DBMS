select distinct(type),count(type) from titles group by type order by count(type) asc;
