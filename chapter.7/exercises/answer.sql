-- 7.1 の SQL
select
    *
from
    Shohin
union
select
    *
from
    Shohin
intersect
select
    *
from
    Shohin
order by
    shohin_id;

-- 7.2 の SQL
select
    case
        when TS.tenpo_id is null then '不明'
        else TS.tenpo_id
    end,
    case
        when TS.tenpo_mei is null then '不明'
        else TS.tenpo_mei
    end,
    S.shohin_id,
    S.shohin_mei,
    S.hanbai_tanka
from
    TenpoShohin as TS
    right outer join Shohin as S on TS.shohin_id = S.shohin_id;