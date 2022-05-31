-- 仕入単価が null の商品選択
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka is null;