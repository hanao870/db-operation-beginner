-- 部分的な組み合わせを取得する
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
    -- groupingset(shohin_bunrui), groupingset(torokubi) のデータを取得
    -- 超集合は取得しない
    grouping sets(shohin_bunrui, torokubi);
