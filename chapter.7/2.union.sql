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

-- 演算対象のテーブルの列数は同じである
select
    shohin_id,
    shohin_mei
from
    Shohin
union
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin2
order by
    shohin_id;