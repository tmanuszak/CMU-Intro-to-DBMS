with dubs as (
	select title_id, count(*) as num_dubs
		from akas
		group by title_id
		order by num_dubs desc
		limit 10
)
select titles.primary_title, dubs.num_dubs
	from dubs
	join titles
	on titles.title_id == dubs.title_id
	order by dubs.num_dubs desc;
