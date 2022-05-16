-- 2.1
select
    shohin_mei,
    torokubi
from
    shohin
where
    torokubi >= '2009-04-28';

-- 2.2
select
    *
from
    shohin
where
    shiire_tanka = null;

select
    *
from
    shohin
where
    shiire_tanka <> null;

select
    *
from
    shohin
where
    shohin_mei > null;

-- 2.3
-- List 2-22 の SQL は以下
-- select
--     shohin_mei,
--     hanbai_tanka,
--     shiire_tanka
-- from
--     shohin
-- where
--     hanbai_tanka - shiire_tanka >= 500;
select
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
where
    not hanbai_tanka - shiire_tanka < 500;

select
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
where
    hanbai_tanka >= shiire_tanka + 500;

-- 2.4
select
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka * 0.9 - shiire_tanka as rieki
from
    shohin;

select
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka * 0.9 - shiire_tanka as rieki
from
    shohin
where
    hanbai_tanka * 0.9 - shiire_tanka > 100
    and (
        shohin_bunrui = '事務用品'
        or shohin_bunrui = 'キッチン用品'
    );
