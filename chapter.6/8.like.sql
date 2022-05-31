-- 前方一致
select
    *
from
    SampleLike
where
    -- % は 0 文字以上の任意の文字列
    strcol like 'ddd%';

-- 中間一致
select
    *
from
    SampleLike
where
    strcol like '%ddd%';

-- 後方一致
select
    *
from
    SampleLike
where
    strcol like '%ddd';