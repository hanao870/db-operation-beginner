--- DDL:テーブル作成
create table SampleStr (
    str1 varchar(40),
    str2 varchar(40),
    str3 varchar(40)
);

-- DML:データ削除
truncate SampleStr;

-- DML:データ登録
begin transaction;

insert into
    SampleStr
values
    ('あいう', 'えお', null);

insert into
    SampleStr
values
    ('abc', 'def', null);

insert into
    SampleStr
values
    ('山田', '太郎', 'です');

insert into
    SampleStr
values
    ('aaa', null, null);

insert into
    SampleStr
values
    (null, 'あああ', null);

insert into
    SampleStr
values
    ('@!#$%', null, null);

insert into
    SampleStr
values
    ('ABC', null, null);

insert into
    SampleStr
values
    ('aBC', null, null);

insert into
    SampleStr
values
    ('abc太郎', 'abc', 'ABC');

insert into
    SampleStr
values
    ('abcdefabc', 'abc', 'ABC');

insert into
    SampleStr
values
    ('ミックマック', 'ッ', 'っ');

commit;

-- 登録データ確認
select * from SampleStr;