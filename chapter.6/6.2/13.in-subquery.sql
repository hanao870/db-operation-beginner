select
    *
from
    TenpoShohin;

-- 大阪に置いてある商品の販売単価を求める
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    shohin_id in (
        select
            shohin_id
        from
            TenpoShohin
        where
            tenpo_id = '000C'
    );

-- not in にサブクエリを使用
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    shohin_id not in (
        select
            shohin_id
        from
            TenpoShohin
        where
            tenpo_id = '000A'
    );