-- 2 つのテーブルを内部結合する
select
    TS.tenpo_id,
    TS.tenpo_mei,
    TS.shohin_id,
    S.shohin_mei,
    S.hanbai_tanka
from
    TenpoShohin as TS
    inner join Shohin as S on TS.shohin_id = S.shohin_id
where
    TS.tenpo_id = '000A';

drop view ShohinJoinTenpoShohin;

-- 内部結合の view 作成
create view ShohinJoinTenpoShohin (
    tenpo_id,
    tenpo_mei,
    shohin_id,
    shohin_mei,
    hanbai_tanka
) as
select
    TS.tenpo_id,
    TS.tenpo_mei,
    TS.shohin_id,
    S.shohin_mei,
    S.hanbai_tanka
from
    TenpoShohin as TS
    inner join Shohin as S on TS.shohin_id = S.shohin_id;

select
    *
from
    ShohinJoinTenpoShohin;