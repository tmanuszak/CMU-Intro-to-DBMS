with genre (g, t) as (
	select distinct(genres) as g,count(*) as c
		from titles
