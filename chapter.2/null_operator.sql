select
    *
from
    shohin;

select
    shohin_mei,
    shiire_tanka
from
    shohin
where
    shiire_tanka = 2800;

select
    shohin_mei,
    shiire_tanka
from
    shohin
where
    shiire_tanka <> 2800;

select
    shohin_mei,
    shiire_tanka
from
    shohin
where
    shiire_tanka = null;

select
    shohin_mei,
    shiire_tanka
from
    shohin
where
    shiire_tanka is null;

select
    shohin_mei,
    shiire_tanka
from
    shohin
where
    shiire_tanka is not null;