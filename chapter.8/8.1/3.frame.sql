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

-- ウィンドウ関数の order by はあくまでウィンドウ関数の計算をどういう順番で行うかを指定するものである
-- 以下の SQL は ranking の降順に表示される保証はない
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    rank () over (
        order by
            hanbai_tanka
    ) as ranking
from
    Shohin;

-- ranking の降順で表示する SQL
select
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    rank () over (
        order by
            hanbai_tanka
    ) as ranking
from
    Shohin
order by
    ranking;