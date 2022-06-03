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