-- テーブルの共通部分の選択
select
    shohin_id,
    shohin_mei
from
    Shohin
intersect
select
    shohin_id,
    shohin_mei
from
    Shohin2
order by
    shohin_id;
