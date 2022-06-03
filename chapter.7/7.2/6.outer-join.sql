-- 2 つのテーブルを外部結合する
select
    TS.tenpo_id,
    TS.tenpo_mei,
    S.shohin_id,
    S.shohin_mei,
    S.hanbai_tanka
from
    TenpoShohin as TS
    right outer join Shohin as S on TS.shohin_id = S.shohin_id;