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