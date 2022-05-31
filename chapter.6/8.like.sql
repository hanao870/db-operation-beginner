-- 前方一致
select
    *
from
    SampleLike
where
    -- % は 0 文字以上の任意の文字列
    strcol like 'ddd%';