-- DDL:テーブル作成
create table ZaikoShohin (
    souko_id char(4) not null,
    shohin_id char(4) not null,
    zaiko_suryo integer not null,
    primary key (souko_id, shohin_id)
);

truncate ZaikoShohin;

-- DML:データ登録
begin transaction;

insert into
    ZaikoShohin
values
    ('S001', '0001', 0);

insert into
    ZaikoShohin
values
    ('S001', '0002', 120);

insert into
    ZaikoShohin
values
    ('S001', '0003', 200);

insert into
    ZaikoShohin
values
    ('S001', '0004', 3);

insert into
    ZaikoShohin
values
    ('S001', '0005', 0);

insert into
    ZaikoShohin
values
    ('S001', '0006', 99);

insert into
    ZaikoShohin
values
    ('S001', '0007', 999);

insert into
    ZaikoShohin
values
    ('S001', '0008', 200);

insert into
    ZaikoShohin
values
    ('S002', '0001', 10);

insert into
    ZaikoShohin
values
    ('S002', '0002', 25);

insert into
    ZaikoShohin
values
    ('S002', '0003', 34);

insert into
    ZaikoShohin
values
    ('S002', '0004', 19);

insert into
    ZaikoShohin
values
    ('S002', '0005', 99);

insert into
    ZaikoShohin
values
    ('S002', '0006', 0);

insert into
    ZaikoShohin
values
    ('S002', '0007', 0);

insert into
    ZaikoShohin
values
    ('S002', '0008', 18);

commit;

select
    *
from
    ZaikoShohin;