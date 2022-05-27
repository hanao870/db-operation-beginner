-- Shohin テーブルの View 作成
create view ShohinSum (shohin_bunrui, cnt_shohin) as -- select 移行が view の本体となる
select
    shohin_bunrui,
    count(*)
from
    Shohin
group by
    shohin_bunrui;

-- view を使用
select
    *
from
    ShohinSum
order by
    cnt_shohin;

-- 多段ビューの作成
-- 多段ビューはパフォーマンス低下を招くため非推奨
create view ShohinSumJim (shohin_bunrui, cnt_shohin) as
select
    *
from
    ShohinSum
where
    shohin_bunrui = '事務用品';

-- 多段ビューの表示
select
    *
from
    ShohinSumJim;

-- 動作確認のために ShohinSum ビューを削除
-- 依存関係にあるビューも合わせて削除する cascade を使用
drop view ShohinSum cascade;

-- view 作成に order by は使用不可
-- PostgreSQL 14.2 では view が作成される
create view ShohinSum (shohin_bunrui, cnt_shohin) as
select
    shohin_bunrui,
    count(*)
from
    Shohin
group by
    shohin_bunrui
order by
    shohin_bunrui;

select
    *
from
    ShohinSum;

-- 更新可能な view を作成
-- view に集約関数、結合(group by)、複数テーブル指定などをしなければ更新は可能
create view ShohinJim (
    shohin_id,
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka,
    shiire_tanka,
    torokubi
) as -- 集約や結合のない select
select
    *
from
    Shohin
where
    shohin_bunrui = '事務用品';

-- view の条件に当てはまるデータ(shohin_bunrui = '事務用品')を登録
insert into
    ShohinJim
values
    ('0009', '印鑑', '事務用品', 95, 10, '2009-11-30');

-- view の条件に当てはまらないデータ(shohin_bunrui = 'キッチン用品')も登録可能
insert into
    ShohinJim
values
    (
        '0010',
        'ミキサー',
        'キッチン用品',
        8000,
        5500,
        '2009-10-25'
    );

-- view のデータ登録確認
-- shohin_id = '0010' のデータは表示されない
select
    *
from
    ShohinJim
order by
    shohin_id;

-- Shohin テーブルのデータ登録確認
-- shohin_id が 0009 と 0010 のデータが登録されている
select
    *
from
    Shohin
order by
    shohin_id;