select
    shohin_bunrui,
    sum(hanbai_tanka)
from
    Shohin
group by
    shohin_bunrui;

-- 商品分類毎の合計と販売単価の合計
select
    '合計' as shohin_bunrui,
    sum(hanbai_tanka)
from
    Shohin
union
all
select
    shohin_bunrui,
    sum(hanbai_tanka)
from
    Shohin
group by
    shohin_bunrui;