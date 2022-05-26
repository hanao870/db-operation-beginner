-- ShohinBunrui テーブルの全行削除
delete from
    ShohinBunrui;

-- 上記 SQL は TRUNCATE で代用可能
-- delete より高速のため、テーブルの全行を削除する場合は truncate を使用するのがよい
truncate ShohinBunrui;

delete from
    ShohinIns
where
    hanbai_tanka >= 4000;