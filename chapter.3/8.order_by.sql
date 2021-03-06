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

-- null を含むソート
-- null は比較演算子が使えないので、先頭か末尾にまとめて表示される
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
order by
    shiire_tanka;

-- 別名による order by
-- BDMS の大まかな実行順序: from -> where -> group by -> having -> select -> order by
-- order by は select より後で実行されるため別名が使用可能
select
    shohin_id as id,
    shohin_mei,
    hanbai_tanka as ht,
    shiire_tanka
from
    shohin
order by
    ht,
    id;

-- select に含まれない列名の order by
select
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
order by
    shohin_id;

-- 集約関数の order by
select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui
order by
    count(*);

-- 列番号による order by
-- 以下の理由により使用しないこと!!
-- 可読性が悪い
-- SQL-92 において、将来削除されるべき機能に挙げられている
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
from
    shohin
order by
    3 desc,
    1;

-- 上記 SQL は以下と同じ
-- select
--     shohin_id,
--     shohin_mei,
--     hanbai_tanka,
--     shiire_tanka
-- from
--     shohin
-- order by
--     hanbai_tanka desc,
--     shohin_id;