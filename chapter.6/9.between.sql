-- 販売単価が 100 ~ 1000 の商品を選択
select
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    hanbai_tanka between 100
    and 1000;

-- 販売単価が 101 ~ 999 の商品を選択
select
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    hanbai_tanka > 100
    and hanbai_tanka < 1000;