-- 文字列から数値型
select
    cast('0001' as integer) as int_col;

-- 文字列から日付型
select
    cast('2009-12-14' as date) as date_col;

-- NULL 変換
select
    coalesce(null, 1) as col_1,
    coalesce(null, 'test', null) as col_2,
    coalesce(null, null, '2009-11-01') as col_3;

select
    str2,
    coalesce(str2, 'NULL です')
from
    SampleStr;