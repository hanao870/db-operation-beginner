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
    hanbai_tanka
from
    shohin
where
    not hanbai_tanka >= 1000;

-- 上記 SQL と同等
select
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka
from
    shohin
where
    hanbai_tanka < 1000;
