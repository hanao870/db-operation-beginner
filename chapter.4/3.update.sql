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

-- 複数列の update
update
    shohin
set
    hanbai_tanka = hanbai_tanka * 10,
    shiire_tanka = shiire_tanka / 2
where
    shohin_bunrui = 'キッチン用品';

-- 上記 SQL と同じ update
-- 但し、この SQL は PostgreSQL と DB2 でのみ利用可能
update
    shohin
set
    (hanbai_tanka, shiire_tanka) = (hanbai_tanka * 10, shiire_tanka / 2)
where
    shohin_bunrui = 'キッチン用品';

-- 上記 SQL の update を元に戻す
update
    shohin
set
    hanbai_tanka = hanbai_tanka / 100,
    shiire_tanka = shiire_tanka * 4
where
    shohin_bunrui = 'キッチン用品';