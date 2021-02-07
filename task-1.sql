select * FROM actor;

SELECT last_name, 
        substr(last_name, 1,1) as first_letter 
        FROM actor;



SELECT count(actor_id) as amount,	
	    substr(last_name, 1,1) as actor_surname_first_letter
FROM actor
group by substr(last_name, 1,1)
order by count(actor_id) desc;




SELECT count(actor_id) as amount,	
	substr(last_name, 1,1) as actor_surname_first_letter
FROM actor
WHERE substr(last_name, 1,1) = "A" 
	or substr(last_name, 1,1) = "B"
GROUP BY substr(last_name, 1,1);