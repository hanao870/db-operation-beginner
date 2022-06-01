select
    *
from
    Shohin;

-- 6.1
select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    shiire_tanka not in (500, 2800, 5000);

select
    shohin_mei,
    shiire_tanka
from
    Shohin
where
    -- not in に null が含まれると1行も選択されない!!
    shiire_tanka not in (500, 2800, 5000, null);

-- 6.2
select
    count(
        case
            when hanbai_tanka <= 1000 then hanbai_tanka
            else null
        end
    ) as low_price,
    count(
        case
            when hanbai_tanka between 1001
            and 3000 then hanbai_tanka
            else null
        end
    ) as mid_price,
    count(
        case
            when hanbai_tanka >= 3001 then hanbai_tanka
            else null
        end
    ) as high_price
from
    Shohin;