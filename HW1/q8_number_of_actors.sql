with movies as (
	select distinct(crew.title_id)
		from people
		join crew
		on people.person_id == crew.person_id and people.born == 1951 and people.name = "Mark Hamill"
)
select count(distinct crew.person_id) 
	from crew
	where (crew.category == "actor" or crew.category == "actress") and crew.title_id in movies;
