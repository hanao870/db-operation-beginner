select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
order by
    hanbai_tanka;

-- 降順に並び替え
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
order by
    hanbai_tanka desc;

-- 商品ID のソートキー追加
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
order by
    hanbai_tanka,
    shohin_id;