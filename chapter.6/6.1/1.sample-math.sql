-- DDL:テーブル作成
create table SampleMath (m numeric (10, 3), n integer, p integer);

-- DML:データ削除
truncate SampleMath;

-- DML:データ登録
begin transaction;

insert into
    SampleMath
values
    (500, 0, null);

insert into
    SampleMath
values
    (-180, 0, null);

insert into
    SampleMath
values
    (null, null, null);

insert into
    SampleMath
values
    (null, 7, 3);

insert into
    SampleMath
values
    (null, 5, 2);

insert into
    SampleMath
values
    (null, 4, null);

insert into
    SampleMath
values
    (8, null, 3);

insert into
    SampleMath
values
    (2.27, 1, null);

insert into
    SampleMath
values
    (5.555, 2, null);

insert into
    SampleMath
values
    (null, 1, null);

insert into
    SampleMath
values
    (8.76, null, null);

commit;

-- 登録データ確認
select
    *
from
    SampleMath;