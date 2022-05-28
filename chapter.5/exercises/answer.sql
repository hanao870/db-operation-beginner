-- 5.1 の SQL
create view ViewRenshu5_1 (shohin_mei, hanbai_tanka, torokubi) as
select
    shohin_mei,
    hanbai_tanka,
    torokubi
from
    Shohin
where
    hanbai_tanka >= 1000
    and torokubi = '2009-09-20';

-- 作成した View の表示
select
    *
from
    ViewRenshu5_1;