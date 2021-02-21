-- 1 Task
-- Suskaičiuoti, kiek yra aktorių, kurių pavardės prasideda A ir B raidėmis. 
-- Rezultate pateikti aktorių skaičių bei pavardės pirmąją raidę.
select
	count(actor_id) as aktoriu_skaicius,
	substr(last_name,
	1,
	1) as pirma_pavardes_raide
from
	actor a
where
	pirma_pavardes_raide in ('A', 'B')
group by
	pirma_pavardes_raide


-- 2 Task
-- Suskaičiuoti kiek filmų yra nusifilmavę aktoriai. 
-- Rezultate pateikti filmų skaičių, aktoriaus vardą ir pavardę. 
-- Rezultate pateikti 10 aktorių, nusifilmavusių daugiausiai filmų.
 select
	count(fa.film_id) as filmu_skaicius,
	a.first_name,
	a.last_name
from
	film_actor fa
left join actor a on
	a.actor_id = fa.actor_id
group by
	a.actor_id
order by
	filmu_skaicius desc,
	a.last_name asc
limit 10
	
	

--3 Task 
--Nustatyti kokia yra minimali, maksimali ir vidutinė kaina, sumokama už filmą. 
--Rezultate pateikti minimalią, maksimalią ir vidutinę kainas.
 select
	min(amount) as minimali_kaina,
	round(avg(amount), 2) vidutine_kaina,
	max(amount) maksimali_kaina
from
	payment p 



--4 Task 
--Suskaičiuoti, kiek kiekviena parduotuvė turi klientų. 
--Rezultate pateikti klientų skaičių ir parduotuvės identifikatorių (store_id).
 select
	count(customer_id) as klientu_skaicius,
	store_id
from
	customer c
group by
	store_id 




--5 Task 
--Suskaičiuoti kiek yra kiekvieno žanro filmų. 
--Rezultate pateikti filmų skaičių ir žanro pavadinimą. 
--Rezultatą surikiuoti pagal filmų skaičių mažėjimo tvarka, pagal filmo žanrą didėjimo tvarka.
 select
	count(fc.film_id) as filmu_skaicius,
	c.name
from
	film_category fc
left join category c on
	c.category_id = fc.category_id
group by
	c.name
order by
	filmu_skaicius desc,
	c.name asc

	

--6 Task 
--Sužinoti, kuriame filme vaidino daugiausiai aktorių. 
--Rezultate pateikti filmo pavadinimą ir aktorių skaičių.
select f.title, count(fa.actor_id) as aktoriu_skaicius from film_actor fa 
left join film f on f.film_id = fa.film_id 
group by fa.film_id 
order by aktoriu_skaicius desc, title asc 
limit 1
	
	
--7 Task 
--Sužinoti, kuriame filme vaidino mažiausiai aktorių. 
--Rezultate pateikti filmo pavadinimą ir aktorių skaičių.
select f.title, count(fa.actor_id) as aktoriu_skaicius from film_actor fa 
left join film f on f.film_id = fa.film_id 
group by fa.film_id 
order by aktoriu_skaicius asc, title asc 
limit 1

	
	

--8 Task 
--Suskaičiuoti, kiek filmų yra nusifilmavęs kiekvienas aktorius. 
--Rezultate pateikti filmų skaičių, aktoriaus vardą, pavardę. 
--Rezultatą surikiuoti pagal filmų skaičių mažėjančia tvarka ir pagal aktoriaus vardą didėjančia tvarka.
 select
	count(fa.film_id) filmu_skaicius,
	a.first_name,
	a.last_name
from
	film_actor fa
left join actor a on
	a.actor_id = fa.actor_id
group by
	fa.actor_id
order by
	filmu_skaicius desc,
	a.first_name asc,
	a.last_name asc

	
	

--9 Task 
--Suskaičiuoti kiek miestų prasideda A, B, C ir D raidėmis. 
--Rezultate patekti miestų skaičių ir miesto pavadinimo pirmąją raidę.
 select
	substr(city,
	1,
	1) as pirma_miesto_raide,
	count(city_id) as miestu_skaicius
from
	city c
where
	pirma_miesto_raide in ("A", "B", "C", "D")
group by
	pirma_miesto_raide
order by
	miestu_skaicius desc
	
	

--10 Task 
--Suskaičiuoti, kiek kiekvienas klientas yra sumokėjęs pinigų už filmų nuomą. 
--Rezultate pateikti kliento vardą, pavardę, adresą, miestą ir sumokėtą pinigų sumą. 
--Rezultate turi būti pateikiami tik tie klientai, kurie yra sumokėję 170 ar didesnę pinigų sumą.
 select
	c.first_name,
	c.last_name,
	a.address,
	city.city,
	sum(p.amount) as sumoketa_pinigu_suma
from
	payment p
left join customer c on
	c.customer_id = p.customer_id
left join address a on
	c.address_id = a.address_id
left join city on
	a.city_id = city.city_id
group by
	c.customer_id
having
	sumoketa_pinigu_suma >= 170
order by
	sumoketa_pinigu_suma DESC,
	c.last_name ASC 


--11 Task 
--Suskaičiuoti, kiek pinigų už filmus yra sumokėję kiekvienos šalies klientai kartu. 
--Rezultate pateikti šalį ir išleistą pinigų sumą. 
--Rezultate pateikti tik tas šalis, kuriose yra išleista daugiau nei 700 pinigų. 
--Duomenis surūšiuoti pagal šalį didėjančia tvarka.
 select
	c2.country,
	sum(p.amount) as sumoketa_pinigu_suma
from
	payment p
left join customer c on
	c.customer_id = p.customer_id
left join address a on
	c.address_id = a.address_id
left join city on
	a.city_id = city.city_id
left join country c2 on
	c2.country_id = city.country_id
group by
	city.country_id
having
	sumoketa_pinigu_suma >= 700
order by
	c2.country asc 
	
	
--12 Task
--    1 Subtask 
--    Suskaičiuoti kiek filmų yra atsargose (inventory). 
--    Rezultate pateikti filmo pavadinimą ir atsargoje esančių kopijų skaičių. 
--    Duomenis surūšiuoti pagal inventoriaus kiekį.
 select
	f.title,
	count(i.inventory_id) as kopiju_skaicius
from
	film f
left join inventory i on
	i.film_id = f.film_id
group by
	f.film_id
order by
	kopiju_skaicius desc
	
	
--    2 Subtask 
--    Pakoreguoti pirmąją užklausą taip, kad būtų suskaičiuota kiek yra filmų, 
--    turinčių tokį patį inventoriaus kiekį 
--    (pvz. kiek yra tokių filmų, kurie turi 8 kopijas). 
--    Rezultate pateikti filmų, turinčių tą patį kiekį kopijų atsargose ir kopijų skaičių.
select
	kopiju_skaicius,
	count(distinct title) filmu_skaicius
from
	(
	select
		f.title,
		count(i.inventory_id) as kopiju_skaicius
	from
		film f
	left join inventory i on
		i.film_id = f.film_id
	group by
		f.film_id
	order by
		kopiju_skaicius desc)
group by
	kopiju_skaicius
order by
	kopiju_skaicius desc
	
	

--13 Task 
--Suskaičiuoti, kiek filmų nusifilmavo kiekvienas aktorius priklausomai nuo filmo žanro (kategorijos). 
--Rezultate pateikti filmų skaičių, aktoriaus vardą ir pavardę, filmo žanrą (kategoriją). 
--Rezultatą surūšiuoti pagal aktoriaus vardą, pavardę, filmo žanrą didėjančia tvarka.
 select
	a.first_name,
	a.last_name,
	c.name,
	count(fa.film_id) as filmu_skaicius
from
	film_actor fa
left join actor a on
	a.actor_id = fa.actor_id
left join film_category fc on
	fc.film_id = fa.film_id
left join category c on
	c.category_id = fc.category_id
group by
	a.actor_id
order by
	a.first_name,
	a.last_name,
	filmu_skaicius 

	
--14 Task 
--Suskaičiuoti kiek filmų savo filmo aprašyme turi žodį „drama“. 
--(Kiek kartų žodis pasikartoja nėra svarbu). 
--Rezultate pateikti tik filmų skaičių ir filmo žanrą. 
--Pateikti tik tuos filmų žanrus, kurie turi 7 ir daugiau filmų, kuriuose yra žodis „drama“ 
--(filmo aprašymui naudoti lauką iš lentos film_text).
select c.name, count(film.film_id) as filmu_skaicius from film
left join film_category fc on
	film.film_id = fc.film_id 
left join category c on
	c.category_id = fc.category_id
where description like "%drama%"
group by c.category_id 
having filmu_skaicius >=7
order by c.name
	


--15 Task 
--Suskaičiuoti kiek klientų yra kiekvienoje šalyje. 
--Rezultate pateikti klientų skaičių ir šalį. 
--Duomenis surikiuoti pagal klientų skaičių mažėjančia tvarka. 
--Pateikti tik 5 šalis, turinčias daugiausiai klientų.
 select
	c2.country,
	count(c.customer_id) as klientu_skaicius
from
	customer c
left join address a on
	c.address_id = a.address_id
left join city on
	a.city_id = city.city_id
left join country c2 on
	c2.country_id = city.country_id
group by
	city.country_id
order by
	klientu_skaicius desc	


--16 Task 
--Suskaičiuoti kiekvienoje parduotuvėje bendrai visų klientų sumokėtą sumą. 
--Rezultate turi būti pateikiamas parduotuvės identifikatorius (store_id), parduotuvės adresas, 
--miestas ir šalis, kurioje yra parduotuvė bei bendra klientų sumokėta suma kiekvienoje parduotuvėje.

select c.store_id, round(sum(amount)) as suma from payment p 
left join customer c on c.customer_id = p.customer_id 
left join store s on s.store_id = c.store_id 
group by c.store_id 
	
	
	
	
