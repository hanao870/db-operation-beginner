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

select
    shiire_tanka,
    count(*)
from
    shohin
where
    shohin_bunrui = '衣服'
group by
    shiire_tanka;

-- group by に指定していない列名を select に設定できない
-- select
--     shiire_tanka,
--     shohin_mei,
--     count(*)
-- from
--     shohin
-- group by
--     shiire_tanka;
