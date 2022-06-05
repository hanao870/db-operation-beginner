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

-- 集計対象を3行後にする(エラーになる)
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    sum(hanbai_tanka) over (
        order by
            shohin_id rows 2 following
    ) as moving_sum,
    avg(hanbai_tanka) over (
        order by
            shohin_id rows 2 following
    ) as moving_avg
from
    Shohin;

-- カレントレコードの前後の行を集計対象に含める
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    sum(hanbai_tanka) over (
        order by
            shohin_id rows between 1 preceding
            and 1 following
    ) as moving_sum,
    avg(hanbai_tanka) over (
        order by
            shohin_id rows between 1 preceding
            and 1 following
    ) as moving_avg
from
    Shohin;