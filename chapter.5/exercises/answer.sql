-- 5.1 の SQL
create view ViewRenshu5_1 (shohin_mei, hanbai_tanka, torokubi) as
select
    shohin_mei,
    hanbai_tanka,
    torokubi
from
    Shohin
where
    hanbai_tanka >= 1000
    and torokubi = '2009-09-20';

-- 作成した View の表示
select
    *
from
    ViewRenshu5_1;

-- 5.2 の SQL. 主キーがないのでデータ登録失敗する
insert into
    ViewRenshu5_1
values
    ('ナイフ', 300, '2009-11-02');

-- 5.3 の SQL
select
    shohin_id,
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka,
    (
        select
            avg(hanbai_tanka)
        from
            shohin
    ) as hanbai_tanka_all
from
    Shohin;

-- 5.4 の SQL
create view AvgTankaByBunrui as
select
    shohin_id,
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka,
    (
        select
            avg(hanbai_tanka)
        from
            Shohin as S2
        where
            S1.shohin_bunrui = S2.shohin_bunrui
        group by
            shohin_bunrui
    ) as avg_hanbai_tanka
from
    Shohin as S1;

select
    *
from
    AvgTankaByBunrui;