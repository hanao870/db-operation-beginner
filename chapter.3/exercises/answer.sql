-- 以下の3つの間違いがある
-- 1. 文字の列を sum に指定している
-- 2. where が group by より後になっている
-- 3. select にない列名が group by に指定されている
select
    shohin_id,
    sum(shohin_mei)
from
    shohin
group by
    shohin_bunrui
where
    torokubi > '2009-09-01';

select
    shohin_bunrui,
    sum(hanbai_tanka),
    sum(shiire_tanka)
from
    shohin
group by
    shohin_bunrui
having
    sum(hanbai_tanka) > sum(shiire_tanka) * 1.5;