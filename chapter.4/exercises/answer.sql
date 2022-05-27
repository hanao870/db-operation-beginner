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

-- 4.3 のテーブル作成
create table ShohinSaeki (
    shohin_id char(4) not null,
    shohin_mei varchar(100) not null,
    hanbai_tanka integer,
    shiire_tanka integer,
    saeki integer,
    primary key (shohin_id)
);

-- 4.3 の SQL
insert into
    ShohinSaeki
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka,
    (hanbai_tanka - shiire_tanka)
from
    ShohinCopy;

-- 4.4 の SQL
-- カッターシャツの販売単価変更
update
    ShohinSaeki
set
    hanbai_tanka = 3000
where
    shohin_mei = 'カッターシャツ';

-- 差益の計算
update
    ShohinSaeki
set
    saeki = hanbai_tanka - shiire_tanka
where
    shohin_mei = 'カッターシャツ';

-- 4.4 の結果確認
select
    *
from
    ShohinSaeki
order by
    shohin_id;