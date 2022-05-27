-- Shohin テーブルの View 作成
create view ShohinSum (shohin_bunrui, cnt_shohin) as -- select 移行が view の本体となる
select
    shohin_bunrui,
    count(*)
from
    Shohin
group by
    shohin_bunrui;

-- view を使用
select
    *
from
    ShohinSum
order by
    cnt_shohin;

-- 多段ビューの作成
-- 多段ビューはパフォーマンス低下を招くため非推奨
create view ShohinSumJim (shohin_bunrui, cnt_shohin) as
select
    *
from
    ShohinSum
where
    shohin_bunrui = '事務用品';

-- 多段ビューの表示
select
    *
from
    ShohinSumJim;