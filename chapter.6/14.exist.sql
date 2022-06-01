-- 大阪に置いてある商品の販売単価を求める
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin as S
where
    -- EXISTS の引数は常に相関サブクエリを指定する
    ExISTS(
        select
            *
        from
            TenpoShohin as TS
        where
            TS.tenpo_id = '000C'
            and TS.shohin_id = S.shohin_id
    );

select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin as S
where
    ExISTS(
        -- select には適当な定数を記述可能
        -- 慣例的に select * を記述する
        select
            1
        from
            TenpoShohin as TS
        where
            TS.tenpo_id = '000C'
            and TS.shohin_id = S.shohin_id
    );
