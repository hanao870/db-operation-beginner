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