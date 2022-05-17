select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui
having
    count(*) = 2;

-- having 句なし
select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui;

select
    shohin_bunrui,
    avg(hanbai_tanka)
from
    shohin
group by
    shohin_bunrui;

select
    shohin_bunrui,
    avg(hanbai_tanka)
from
    shohin
group by
    shohin_bunrui
having
    avg(hanbai_tanka) >= 2500;

-- having 句に指定できるのは「定数」「集約関数」「group by 句で指定した列名（集約キー）」
-- select
--     shohin_bunrui,
--     count(*)
-- from
--     shohin
-- group by
--     shohin_bunrui
-- having
--     shohin_mei = 'ボールペン';

select
    shohin_bunrui,
    count(*)
from
    shohin
group by
    shohin_bunrui
having
    shohin_bunrui = '衣服';

-- 上記 SQL と同じ結果を返す
select
    shohin_bunrui,
    count(*)
from
    shohin
where
    shohin_bunrui = '衣服'
group by
    shohin_bunrui;
