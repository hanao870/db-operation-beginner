select
    shohin_mei,
    hanbai_tanka,
    hanbai_tanka * 2 as "hanbai_tanka_x2"
from
    shohin;

select
    shohin_mei,
    shohin_bunrui
from
    shohin
where
    hanbai_tanka = 500;

select
    shohin_mei,
    shohin_bunrui
from
    shohin
where
    -- 販売単価が 500 円以外
    hanbai_tanka <> 500;

select
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka
from
    shohin
where
    hanbai_tanka >= 1000;

select
    shohin_mei,
    shohin_bunrui,
    torokubi
from
    shohin
where
    torokubi < '2009-09-27';

select
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
where
    hanbai_tanka - shiire_tanka >= 500;