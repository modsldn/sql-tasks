## Teorija
1. `SELECT`.
2. Populiariausios agregavimo funkcijos
    - `COUNT`,
    - `SUM`,
    - `MIN`,
    - `MAX`,
    - `AVG`.
3. Filtruoti eilutes naudojam `WHERE`.
    - Norėdami sujungti keletą sąlygų naudojam `AND`, `OR`, `NOT` operatorius.
    - Patikrinti ar reikšmė yra apibrėžtame sąraše `IN`.
4. `HAVING` padeda išfiltruoti `GROUP BY` rezultatus.
```
SELECT count([Customer ID]) as 	[Customer amount],
	[Country]
FROM [Customers]
GROUP BY Country
HAVING count([Customer ID])>= 3;

```
5. `ORDER` padeda išrikiuoti norima tvarka. 




### ([Užduočių sprendimai](task-solutions.sql), [teorija](torija.sql))

## Užduotys

1. Suskaičiuoti, kiek yra aktorių, kurių pavardės prasideda A ir B raidėmis. Rezultate pateikti aktorių skaičių bei pavardės pirmąją raidę. 
2. Suskaičiuoti kiek filmų yra nusifilmavę aktoriai. Rezultate pateikti filmų skaičių, aktoriaus vardą ir pavardę. Rezultate pateikti 10 aktorių, nusifilmavusių daugiausiai filmų.
3. Nustatyti kokia yra minimali, maksimali ir vidutinė kaina, sumokama už filmą. Rezultate pateikti minimalią, maksimalią ir vidutinę kainas.
4. Suskaičiuoti, kiek kiekviena parduotuvė turi klientų. Rezultate pateikti klientų skaičių ir parduotuvės identifikatorių (store_id).
5. Suskaičiuoti kiek yra kiekvieno žanro filmų. Rezultate pateikti filmų skaičių ir žanro pavadinimą. Rezultatą surikiuoti pagal filmų skaičių mažėjimo tvarka, pagal filmo žanrą didėjimo tvarka.
6. Sužinoti, kuriame filme vaidino daugiausiai aktorių. Rezultate pateikti filmo pavadinimą ir aktorių skaičių.
7. Sužinoti, kuriame filme vaidino mažiausiai aktorių. Rezultate pateikti filmo pavadinimą ir aktorių skaičių.
8. Suskaičiuoti, kiek filmų yra nusifilmavęs kiekvienas aktorius. Rezultate pateikti filmų skaičių, aktoriaus vardą, pavardę. Rezultatą surikiuoti pagal filmų skaičių mažėjančia tvarka ir pagal aktoriaus vardą didėjančia tvarka.
9. Suskaičiuoti kiek miestų prasideda A, B, C ir D raidėmis. Rezultate patekti miestų skaičių ir miesto pavadinimo pirmąją raidę.
10. Suskaičiuoti, kiek kiekvienas klientas yra sumokėjęs pinigų už filmų nuomą. Rezultate pateikti kliento vardą, pavardę, adresą, miestą ir sumokėtą pinigų sumą. Rezultate turi būti pateikiami tik tie klientai, kurie yra sumokėję 170 ar didesnę pinigų sumą.
11. Suskaičiuoti, kiek pinigų už filmus yra sumokėję kiekvienos šalies klientai kartu. Rezultate pateikti šalį ir išleistą pinigų sumą. Rezultate pateikti tik tas šalis, kurios yra išleidusios daugiau nei 700 pinigų. Duomenis surūšiuoti pagal šalį didėjančia tvarka.
12. 
    1. Suskaičiuoti kiek filmų yra atsargose (inventory). Rezultate pateikti filmo pavadinimą ir atsargoje esančių kopijų skaičių. Duomenis surūšiuoti pagal inventoriaus kiekį.
    2. Pakoreguoti pirmąją užklausą taip, kad būtų suskaičiuota kiek yra filmų, turinčių tokį patį inventoriaus kiekį (pvz. kiek yra tokių filmų, kurie turi 8 kopijas). Rezultate pateikti filmų, turinčių tą patį kiekį kopijų atsargose ir kopijų skaičių.
13. Suskaičiuoti, kiek filmų nusifilmavo kiekvienas aktorius priklausomai nuo filmo žanro (kategorijos). Rezultate pateikti filmų skaičių, aktoriaus vardą ir pavardę, filmo žanrą (kategoriją). Rezultatą surūšiuoti pagal aktoriaus vardą, pavardę, filmo žanrą didėjančia tvarka.
14. Suskaičiuoti kiek filmų savo filmo aprašyme turi žodį „drama“. (Kiek kartų žodis pasikartoja nėra svarbu). Rezultate pateikti tik filmų skaičių ir filmo žanrą. Pateikti tik tuos filmų žanrus, kurie turi 7 ir daugiau filmų, kuriuose yra žodis „drama“ (filmo aprašymui naudoti lauką iš lentos film_text).
15. Suskaičiuoti kiek klientų yra kiekvienoje šalyje. Rezultate pateikti klientų skaičių ir šalį. Duomenis surikiuoti pagal klientų skaičių mažėjančia tvarka. Pateikti tik 5 šalis, turinčias daugiausiai klientų.
16. Suskaičiuoti kiekvienoje parduotuvėje bendrai visų klientų sumokėtą sumą. Rezultate turi būti pateikiamas parduotuvės identifikatorius (store_id), parduotuvės adresas, miestas ir šalis, kurioje yra parduotuvė bei bendra klientų sumokėta suma kiekvienoje parduotuvėje.