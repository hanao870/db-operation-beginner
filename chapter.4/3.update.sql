-- torokubi を更新. 全行が対象
update
    shohin
set
    torokubi = '2009-10-10';

-- 条件を指定した update
update
    shohin
set
    hanbai_tanka = hanbai_tanka * 10
where
    shohin_bunrui = 'キッチン用品';

-- 上記 SQL の更新を元に戻す
update
    shohin
set
    hanbai_tanka = hanbai_tanka / 10
where
    shohin_bunrui = 'キッチン用品';

-- null クリア
update
    shohin
set
    torokubi = null
where
    shohin_id = '0008';