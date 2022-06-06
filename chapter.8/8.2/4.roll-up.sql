select
    shohin_bunrui,
    sum(hanbai_tanka)
from
    Shohin
group by
    shohin_bunrui;

-- 商品分類毎の合計と販売単価の合計
select
    '合計' as shohin_bunrui,
    sum(hanbai_tanka)
from
    Shohin
union
all
select
    shohin_bunrui,
    sum(hanbai_tanka)
from
    Shohin
group by
    shohin_bunrui;

-- 合計行と小計を一度に求める
select
    shohin_bunrui,
    sum(hanbai_tanka) as sum_tanka
from
    Shohin
group by
    rollup (shohin_bunrui);

-- rollup なしの 2 つの group by
select
    shohin_bunrui,
    torokubi,
    sum(hanbai_tanka) as sum_tanka
from
    Shohin
group by
    shohin_bunrui,
    torokubi;