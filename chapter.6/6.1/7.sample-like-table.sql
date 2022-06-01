--- DDL:テーブル作成
create table SampleLike (strcol VARCHAR(6) not null, primary key (strcol));

truncate SampleLike;

--- DML:データ登録
begin transaction;

insert into
    SampleLike
values
    ('abcddd');

insert into
    SampleLike
values
    ('dddabc');

insert into
    SampleLike
values
    ('abdddc');

insert into
    SampleLike
values
    ('abcdd');

insert into
    SampleLike
values
    ('ddabc');

insert into
    SampleLike
values
    ('abddc');

commit;

select
    *
from
    SampleLike;