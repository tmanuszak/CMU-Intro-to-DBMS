SELECT type,primary_title,runtime_minutes FROM (
	SELECT *,
		RANK() OVER (PARTITION BY type ORDER BY runtime_minutes DESC) 
		AS rank
	FROM titles) AS ranking
WHERE ranking.rank = 1;
	
