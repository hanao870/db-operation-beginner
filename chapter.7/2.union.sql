-- 2つのテーブルの和集合
select
    shohin_id,
    shohin_mei
from
    Shohin
union
select
    shohin_id,
    shohin_mei
from
    Shohin2
order by
    shohin_id;