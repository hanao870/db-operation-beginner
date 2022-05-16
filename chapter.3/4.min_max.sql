select
    max(hanbai_tanka),
    min(shiire_tanka)
from
    shohin;

-- 日付型の min / max
select
    max(torokubi),
    min(torokubi)
from
    shohin;