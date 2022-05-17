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
