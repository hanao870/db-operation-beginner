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

-- UPPER(大文字変換)
select
    str1,
    upper(str1) as up_str
from
    SampleStr;

-- REPLACE(文字列置換)
select
    str1,
    str2,
    str3,
    REPLACE(str1, str2, str3) as "REPLACE(str1, str2, str3)"
from
    SampleStr;