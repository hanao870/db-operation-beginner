select
    avg(hanbai_tanka)
from
    shohin;

-- null を含む avg は null の行が除外される
select
    avg(hanbai_tanka),
    avg(shiire_tanka)
from
    shohin;