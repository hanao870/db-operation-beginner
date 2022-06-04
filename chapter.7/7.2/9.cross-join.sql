-- 2つのテーブルのクロス結合
-- 結合結果は2つのテーブルの全ての組み合わせとなる
-- => 2つのテーブルの列数の積となる
-- TenpoShohin(13) × Shohin(8) = 104 となる
select
    TS.tenpo_id,
    TS.tenpo_mei,
    TS.shohin_id,
    S.shohin_mei
from
    TenpoShohin as TS
    cross join Shohin as S;