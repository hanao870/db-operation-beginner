-- 販売単価が 100 ~ 1000 の商品を選択
select
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    hanbai_tanka between 100
    and 1000;