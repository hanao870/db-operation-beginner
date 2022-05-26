select
    *
from
    shohin;

begin transaction;

-- カッターシャツの販売単価を1000円値引き
update
    shohin
set
    hanbai_tanka = hanbai_tanka - 1000
where
    shohin_mei = 'カッターシャツ';

-- Tシャツの販売単価を1000円値上げ
update
    shohin
set
    hanbai_tanka = hanbai_tanka + 1000
where
    shohin_mei = 'Tシャツ';

commit;

-- 処理の取り消し rollback
begin transaction;

-- カッターシャツの販売単価を1000円値引き
update
    shohin
set
    hanbai_tanka = hanbai_tanka - 1000
where
    shohin_mei = 'カッターシャツ';

-- Tシャツの販売単価を1000円値上げ
update
    shohin
set
    hanbai_tanka = hanbai_tanka + 1000
where
    shohin_mei = 'Tシャツ';

rollback;

select
    *
from
    shohin;