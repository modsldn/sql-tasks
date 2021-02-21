-- select struktura
select
	lv.stulpelio_vardas,
	count(nl.naujas_stulpelis)
from
	lenteles_vardas as lv
left join nauja_lentele as nl on
	nl.id2 = lv.id1
where
	lv.stulpelio_vardas = [salyga]
	and nl.naujas_stulpelis = [kita salyga]
group by
	lv.stulpelio_vardas
having
	count(nl.naujas_stulpelis)>= [dar viena salyga]
order by
	count(nl.naujas_stulpelis) desc


-- panaudotos komandos
-- as
-- select
-- from 
-- left join
    -- on
-- where
    -- and
    -- or
-- group by 
    -- having
        -- and
        -- or
-- order by
-- asc
-- desc
