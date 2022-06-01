select
    shohin_mei,
    case
        when shohin_bunrui = '衣服' then 'A:' || shohin_bunrui
        when shohin_bunrui = '事務用品' then 'B:' || shohin_bunrui
        when shohin_bunrui = 'キッチン用品' then 'C:' || shohin_bunrui
        else null
    end as abc_shohin_bunrui
from
    Shohin;

-- 上記 SQL を単純 CASE 式で記述
select
    shohin_mei,
    case
        shohin_bunrui
        when '衣服' then 'A:' || shohin_bunrui
        when '事務用品' then 'B:' || shohin_bunrui
        when 'キッチン用品' then 'C:' || shohin_bunrui
        else null
    end as abc_shohin_bunrui
from
    Shohin;

-- 商品分類毎の販売単価の合計
select
    shohin_bunrui,
    sum(hanbai_tanka) as sum_tanka
from
    Shohin
group by
    shohin_bunrui;

-- 商品分類毎に販売単価を合計した結果を行列変換する
select
    sum(
        case
            when shohin_bunrui = '衣服' then hanbai_tanka
            else 0
        end
    ) as sum_tanka_ihuku,
    sum(
        case
            when shohin_bunrui = 'キッチン用品' then hanbai_tanka
            else 0
        end
    ) as sum_tanka_kitchen,
    sum(
        case
            when shohin_bunrui = '事務用品' then hanbai_tanka
            else 0
        end
    ) as sum_tanka_jimu
from
    shohin;