select distinct(decade),count(decade) from (
	select (cast(premiered / 10 as text) || '0s') as decade
		from titles 
		where premiered is not null)
	group by decade
	order by count(decade) desc;
