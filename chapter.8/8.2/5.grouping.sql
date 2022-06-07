-- 超集合の null 判定
select
    grouping(shohin_bunrui) as shohin_bunrui,
    grouping(torokubi) as torokubi,
    sum(hanbai_tanka) as sum_tanka
from
    Shohin
group by
    rollup(shohin_bunrui, torokubi);

-- 超集合行のキーに適当な文字列を埋め込む
select
    case
        when grouping(shohin_bunrui) = 1 then '商品分類 合計'
        else shohin_bunrui
    end as shohin_bunrui,
    case
        when grouping(torokubi) = 1 then '登録日 合計'
        -- case によって文字列型と日付型が混在するので構文エラーとなる
        -- そのため、日付型を文字列に変換する必要がある
        else cast(torokubi as varchar(16))
    end as torokubi,
    sum(hanbai_tanka) as sum_tanka
from
    Shohin
group by
    rollup(shohin_bunrui, torokubi);