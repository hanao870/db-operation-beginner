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

-- like と _(アンダーバー)による後方一致
select
    *
from
    SampleLike
where
    -- _ は任意の 1 文字を意味する
    strcol like 'abc__';

select
    *
from
    SampleLike
where
    strcol like 'abc___';
