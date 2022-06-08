-- 8.1 の SQL
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    max(hanbai_tanka) over(
        order by
            shohin_id
    ) as current_max_tanka
from
    Shohin;

-- 8.2 の SQL
select
    torokubi,
    shohin_mei,
    hanbai_tanka,
    -- nulls first は DBMS の実装依存(標準 SQL では定義されていない)
    sum(hanbai_tanka) over(
        order by
            torokubi nulls first
    ) as current_sum_tanka
from
    Shohin;
