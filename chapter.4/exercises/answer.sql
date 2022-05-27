-- 4.2 の動作確認用テーブル作成
create table ShohinCopy (
    shohin_id char(4) not null,
    shohin_mei varchar(100) not null,
    shohin_bunrui varchar(32) not null,
    hanbai_tanka integer,
    shiire_tanka integer,
    torokubi date,
    primary key (shohin_id)
);

-- 4.2 の動作確認用データ登録
insert into
    ShohinCopy
values
    ('0001', 'Tシャツ', '衣類', 1000, 500, '2009-09-20'),
    ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11'),
    ('0003', 'カッターシャツ', '衣類', 4000, 2800, null);

-- 4.2 の SQL 実行
-- 主キー(shohin_id)が重複するのでエラーとなる
insert into
    ShohinCopy
select
    *
from
    ShohinCopy;