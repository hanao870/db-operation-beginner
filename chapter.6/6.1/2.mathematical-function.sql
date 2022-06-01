-- ABS 関数
select
    m,
    abs(m) as abs_col
from
    SampleMath;

-- MOD(剰余) 関数
select
    n,
    p,
    mod(n, p) as mod_col
from
    SampleMath;

-- ROUND(四捨五入) 関数
select
    m,
    n,
    round(m, n)
from
    SampleMath;