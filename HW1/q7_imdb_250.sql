with a(average_rating) as (
	select sum(rating * votes) / sum(votes)
		from ratings
		join titles
		on titles.title_id == ratings.title_id and titles.type == "movie"), 
	m(min_rating) as (
		select 25000.0)
select primary_title, (votes / (votes + min_rating)) * rating + (min_rating / (votes + min_rating)) * average_rating as wr
	from ratings, a, m
	join titles
	on titles.title_id == ratings.title_id and titles.type == "movie"
	order by wr desc
	limit 250;

