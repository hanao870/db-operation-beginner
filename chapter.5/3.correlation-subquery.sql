-- 相関サブクエリの動作確認
-- 商品分類ごとの平均販売単価
select
    avg(hanbai_tanka)
from
    Shohin
group by
    shohin_bunrui;

-- 商品分類ごとに平均販売単価より高い商品を選択
-- エラーとなる SQL
select
    shohin_id,
    shohin_mei,
    hanbai_tanka
from
    Shohin
where
    -- 複数行サブクエリのためエラー
    hanbai_tanka > (
        select
            avg(hanbai_tanka)
        from
            Shohin
        group by
            shohin_bunrui
    );

-- 上記 SQL を相関サブクエリで書き換え
select
    shohin_id,
    shohin_bunrui,
    shohin_mei,
    hanbai_tanka
from
    Shohin as S1
where
    hanbai_tanka > (
        select
            avg(hanbai_tanka)
        from
            Shohin as S2
        where
            S1.shohin_bunrui = S2.shohin_bunrui
        group by
            shohin_bunrui
    )
order by
    shohin_id;

-- 結合条件の記述位置を変更
-- この SQL はエラーとなる
select
    shohin_id,
    shohin_bunrui,
    shohin_mei,
    hanbai_tanka
from
    Shohin as S1
where
    -- 結合条件をサブクエリ外に移動
    -- 相関名 S2 はサブクエリでのみ有効なためエラーとなる
    S1.shohin_bunrui = S2.shohin_bunrui
    and hanbai_tanka > (
        select
            avg(hanbai_tanka)
        from
            Shohin as S2
        group by
            shohin_bunrui
    )
order by
    shohin_id;