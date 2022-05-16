select
    count(distinct shohin_bunrui)
from
    shohin;

-- distinct なしの場合は 8 となる
select
    count(shohin_bunrui)
from
    shohin;

-- distinct は count の括弧内に必ず記述する(結果は 8)
select
    distinct count(shohin_bunrui)
from
    shohin;

select
    sum(hanbai_tanka),
    sum(distinct hanbai_tanka)
from
    shohin;