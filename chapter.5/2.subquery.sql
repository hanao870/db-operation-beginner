-- 動作確認のためにビューを削除
drop view ShohinSum cascade;

-- 商品分類毎に商品数を集計するビュー
create view ShohinSum (shohin_bunrui, cnt_shohin) as
select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui;

-- 作成したビューの表示
select
    *
from
    ShohinSum;

-- ShohinSum と同じサブクエリ
select
    shohin_bunrui,
    cnt_shohin
from
    (
        -- ビュー定義の select 文をそのまま記述
        select
            shohin_bunrui,
            count(*) as cnt_shohin
        from
            shohin
        group by
            shohin_bunrui
    ) as ShohinSum;

-- サブクエリの入れ子構造
-- 階層を深くするとパフォーマンス低下を招く
select
    shohin_bunrui,
    cnt_shohin
from
    (
        select
            *
        from
            (
                select
                    shohin_bunrui,
                    count(*) as cnt_shohin
                from
                    shohin
                group by
                    shohin_bunrui
            ) as ShohinSum
        where
            cnt_shohin = 4
    ) as ShohinSum2;

-- 販売単価が販売単価の平均より高い商品を検索
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    -- 集約関数は where 句で使用できないのでエラーとなる
    hanbai_tanka > avg(hanbai_tanka);

-- 上記 SQL のスカラサブクエリ使用版
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    -- スカラ・サブクエリを使用
    hanbai_tanka > (
        select
            avg(hanbai_tanka)
        from
            shohin
    );

-- スカラ・サブクエリはスカラ値が記述できる場所なら OK
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    (
        select
            avg(hanbai_tanka)
        from
            Shohin
    ) as avg_tanka
from
    Shohin
order by
    shohin_id;

-- having 句のスカラ・サブクエリ
select
    shohin_bunrui,
    avg(hanbai_tanka)
from
    Shohin
group by
    shohin_bunrui
having
    avg(hanbai_tanka) > (
        select
            avg(hanbai_tanka)
        from
            Shohin
    )
order by
    avg(hanbai_tanka);

-- スカラ・サブクエリは必ず複数行を返さないこと
-- 以下の SQL はエラーとなる
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    -- 複数行を返すサブクエリのためエラーとなる
    (
        select
            avg(hanbai_tanka)
        from
            Shohin
        group by
            shohin_bunrui
    ) as avg_tanka
from
    Shohin;