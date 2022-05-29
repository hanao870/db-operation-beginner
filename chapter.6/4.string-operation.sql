-- 文字列の連結
select
    str1,
    str2,
    str1 || str2 as str_concat
from
    SampleStr;

select
    str1,
    str2,
    str3,
    str1 || str2 || str3 as str_concat
from
    SampleStr;