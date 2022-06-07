-- 超集合の null 判定
select
    grouping(shohin_bunrui) as shohin_bunrui,
    grouping(torokubi) as torokubi,
    sum(hanbai_tanka) as sum_tanka
from
    Shohin
group by
    rollup(shohin_bunrui, torokubi);