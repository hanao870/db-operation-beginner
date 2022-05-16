select
    sum(hanbai_tanka)
from
    shohin;

-- null を含む sum は null の行が除外される
select
    sum(hanbai_tanka),
    sum(shiire_tanka)
from
    shohin;