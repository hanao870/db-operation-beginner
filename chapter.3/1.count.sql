select
    count(*)
from
    shohin;

-- null を除外
select
    count(shiire_tanka)
from
    shohin;

-- null 動作確認用テーブル作成
create table nulltbl (
    id integer not null,
    col_1 integer,
    primary key (id)
);

-- DML(Data Manipulation Language):データ登録
begin transaction;

insert into
    nulltbl
values
    (1, null);

insert into
    nulltbl
values
    (2, null);

insert into
    nulltbl
values
    (3, null);

commit;

select
    count(*),
    count(col_1)
from
    nulltbl;

drop table nulltbl;