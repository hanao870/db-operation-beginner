-- in を使わない条件検索
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka = 320
    or shiire_tanka = 500
    or shiire_tanka = 5000;

-- 上記 SQL の in を使った検索
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka in (320, 500, 5000);

-- not in
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka not in (320, 500, 5000);
