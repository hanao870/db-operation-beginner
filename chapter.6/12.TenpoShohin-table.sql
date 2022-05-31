-- DDL:テーブル作成
create table TenpoShohin (
    tenpo_id char(4) not null,
    tenpo_mei varchar(200) not null,
    shohin_id char(4) not null,
    suryo integer not null,
    primary key (tenpo_id, shohin_id)
);

truncate TenpoShohin;

-- DML:データ登録
begin transaction;

insert into
    TenpoShohin
values
('000A', '東京', '0001', 30);

insert into
    TenpoShohin
values
('000A', '東京', '0002', 50);

insert into
    TenpoShohin
values
('000A', '東京', '0003', 15);

insert into
    TenpoShohin
values
('000B', '名古屋', '0002', 30);

insert into
    TenpoShohin
values
('000B', '名古屋', '0003', 120);

insert into
    TenpoShohin
values
('000B', '名古屋', '0004', 20);

insert into
    TenpoShohin
values
('000B', '名古屋', '0006', 10);

insert into
    TenpoShohin
values
('000B', '名古屋', '0007', 40);

insert into
    TenpoShohin
values
('000C', '大阪', '0003', 20);

insert into
    TenpoShohin
values
('000C', '大阪', '0004', 50);

insert into
    TenpoShohin
values
('000C', '大阪', '0006', 90);

insert into
    TenpoShohin
values
('000C', '大阪', '0007', 70);

insert into
    TenpoShohin
values
('000D', '福岡', '0001', 100);

commit;

-- 登録データ確認
select
    *
from
    TenpoShohin;