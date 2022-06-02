-- DDL:テーブル作成
create table Shohin2(
    shohin_id char(4) not null,
    shohin_mei varchar(100) not null,
    shohin_bunrui varchar(32) not null,
    hanbai_tanka integer,
    shiire_tanka integer,
    torokubi date,
    primary key (shohin_id)
);

truncate Shohin2;

-- DML:データ登録
begin transaction;

insert into
    Shohin2
values
    ('0001', 'Tシャツ', '衣服', 1000, 500, '2008-09-20');

insert into
    Shohin2
values
    ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');

insert into
    Shohin2
values
    ('0003', 'カッターシャツ', '衣服', 4000, 2800, null);

insert into
    Shohin2
values
    ('0009', '手袋', '衣服', 800, 500, null);

insert into
    Shohin2
values
    (
        '0010',
        'やかん',
        'キッチン用品',
        2000,
        1700,
        '2009-09-20'
    );

commit;

select
    *
from
    Shohin2;