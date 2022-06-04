--- 3 つのテーブルを結合
select
    TS.tenpo_id,
    TS.tenpo_mei,
    TS.shohin_id,
    S.shohin_mei,
    S.hanbai_tanka,
    ZS.zaiko_suryo,
    ZS.souko_id
from
    TenpoShohin as TS
    inner join Shohin as S on TS.shohin_id = S.shohin_id
    inner join ZaikoShohin as ZS on TS.shohin_id = ZS.shohin_id
where
    ZS.souko_id = 'S001';