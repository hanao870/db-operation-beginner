select
    shohin_id,
    shohin_mei,
    shiire_tanka
from
    shohin;

-- 全データを表示
select
    *
from
    shohin;

-- 列に別名をつける
select
    shohin_id as id,
    shohin_mei as names,
    shiire_tanka as tanka
from
    shohin;

-- 日本語の列名
select
    shohin_id as "商品ID",
    shohin_mei as "商品名",
    shiire_tanka as "仕入単価"
from
    shohin;

-- 列に定数を設定
select
    '商品' as mojiretsu,
    38 as kazu,
    '2009-02-24' as hizuke,
    shohin_id,
    shohin_mei
from
    shohin;

select
    *
from
    shohin;

-- 重複を除いた表示
select
    distinct shohin_bunrui
from
    shohin;

select
    *
from
    shohin;

select
    distinct shiire_tanka
from
    shohin;

select
    *
from
    shohin;

/*
    複数列の
    重複を除く
*/
select
    distinct shohin_bunrui,
    torokubi
from
    shohin;

-- where 句
select
    shohin_mei,
    shohin_bunrui
from
    shohin
where
    shohin_bunrui = '衣服';

select
    shohin_mei
from    -- SQL 文の途中にコメントを挿入しても大丈夫
    shohin
where
    shohin_bunrui = '衣服';