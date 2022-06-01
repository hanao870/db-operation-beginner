-- 仕入単価が null の商品選択
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka is null;

-- 仕入単価が null でない商品選択
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka is not null;
