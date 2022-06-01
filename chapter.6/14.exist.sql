-- 大阪に置いてある商品の販売単価を求める
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin as S
where
    ExISTS(
        select
            *
        from
            TenpoShohin as TS
        where
            TS.tenpo_id = '000C'
            and TS.shohin_id = S.shohin_id
    );