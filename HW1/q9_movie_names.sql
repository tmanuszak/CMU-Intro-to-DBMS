with 
	hamill_movies as (
		select distinct(crew.title_id)
			from people
			join crew
			on people.person_id == crew.person_id and people.born == 1951 and people.name == "Mark Hamill"),
	lucas_movies as (
		select distinct(crew.title_id)
			from people
			join crew
			on people.person_id == crew.person_id and people.born == 1944 and people.name == "George Lucas"
)
select primary_title
	from titles
	where title_id in (select * from hamill_movies intersect select * from lucas_movies) and type == "movie"
	order by primary_title asc;
