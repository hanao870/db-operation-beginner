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

-- LENGTH(文字列の長さ)
-- PostgreSQL はマルチバイト文字も1文字としてカウントする
select
    str1,
    length(str1) as len_str
from
    SampleStr;

-- LOWER(小文字変換)
select
    str1,
    lower(str1) as low_str
from
    SampleStr;