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

-- 列のデータ型が一致している
select
    shohin_id,
    shohin_mei
from
    Shohin
union
select
    shohin_id,
    hanbai_tanka
from
    Shohin2
order by
    shohin_id;

-- 列のデータ型が一致していれば異なる列を指定可能
select
    shohin_id,
    shohin_mei
from
    Shohin
union
select
    shohin_id,
    shohin_bunrui
from
    Shohin2
order by
    shohin_id;

-- order by 句は最後に1つだけ
select
    shohin_id,
    shohin_mei
from
    Shohin
where
    shohin_bunrui = 'キッチン用品'
union
select
    shohin_id,
    shohin_mei
from
    Shohin2
where
    shohin_bunrui = 'キッチン用品'
order by
    shohin_id;