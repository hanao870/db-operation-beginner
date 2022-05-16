select
    shohin_mei,
    shiire_tanka
from
    shohin
where
    shohin_bunrui = 'キッチン用品'
    and hanbai_tanka >= 3000;

select
    shohin_mei,
    shiire_tanka
from
    shohin
where
    shohin_bunrui = 'キッチン用品'
    or hanbai_tanka >= 3000;

select
    shohin_mei,
    shohin_bunrui,
    torokubi
from
    shohin
where
    shohin_bunrui = '事務用品'
    and torokubi = '2009-09-11'
    or torokubi = '2009-09-20';

select
    shohin_mei,
    shohin_bunrui,
    torokubi
from
    shohin
where
    shohin_bunrui = '事務用品'
    and (
        torokubi = '2009-09-11'
        or torokubi = '2009-09-20'
    );