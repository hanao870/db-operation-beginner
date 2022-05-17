select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui
having
    count(*) = 2;

-- having 句なし
select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui;

select
    shohin_bunrui,
    avg(hanbai_tanka)
from
    shohin
group by
    shohin_bunrui;

select
    shohin_bunrui,
    avg(hanbai_tanka)
from
    shohin
group by
    shohin_bunrui
having
    avg(hanbai_tanka) >= 2500;