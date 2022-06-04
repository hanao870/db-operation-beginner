-- 7.1 の SQL
select
    *
from
    Shohin
union
select
    *
from
    Shohin
intersect
select
    *
from
    Shohin
order by
    shohin_id;
