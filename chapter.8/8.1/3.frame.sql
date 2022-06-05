-- 集計対象を直近の3行にする
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    sum(hanbai_tanka) over (
        order by
            shohin_id rows 2 preceding
    ) as moving_sum,
    avg(hanbai_tanka) over (
        order by
            shohin_id rows 2 preceding
    ) as moving_avg
from
    Shohin;