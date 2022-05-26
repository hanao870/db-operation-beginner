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