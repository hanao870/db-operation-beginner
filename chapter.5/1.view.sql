-- Shohin テーブルの View 作成
create view ShohinSum (shohin_bunrui, cnt_shohin) as
-- select 移行が view の本体となる
select
    shohin_bunrui,
    count(*)
from
    Shohin
group by
    shohin_bunrui;