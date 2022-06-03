-- Shohin テーブルから Shohin2 テーブルのレコードを引く
select
    shohin_id,
    shohin_mei
from
    Shohin
except
select
    shohin_id,
    shohin_mei
from
    Shohin2
order by
    shohin_id;

-- Shohin2 テーブルから Shohin テーブルのレコードを引く
select
    shohin_id,
    shohin_mei
from
    Shohin2
except
select
    shohin_id,
    shohin_mei
from
    Shohin
order by
    shohin_id;
