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