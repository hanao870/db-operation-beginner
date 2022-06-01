select
    *
from
    Shohin;

-- 6.1
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka not in (500, 2800, 5000);

select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka not in (500, 2800, 5000, null);
