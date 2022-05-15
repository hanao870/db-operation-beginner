-- DDL(Data Definition Lanugage):テーブル作成
create table chars (
    chr char(3) not null,
    primary key (chr)
);

-- DML(Data Manipulation Language):データ登録
begin transaction;

insert into
    chars values ('1');

insert into
    chars values ('2');

insert into
    chars values ('3');

insert into
    chars values ('10');

insert into
    chars values ('11');

insert into
    chars values ('222');

commit;