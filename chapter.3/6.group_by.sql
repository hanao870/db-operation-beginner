-- 商品分類ごとの行数(=商品数)
select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui;

-- null を含む group by
select
    shiire_tanka,
    count(*)
from
    shohin
group by
    shiire_tanka;