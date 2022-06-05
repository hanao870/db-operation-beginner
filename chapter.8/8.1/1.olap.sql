select
    shohin_id,
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka,
    rank () over (
        -- partition by : 順位を付ける対象の範囲を設定
        -- partition by で区切られたレコードの集合をウィンドウと呼ぶ
        partition by shohin_bunrui
        -- order by : どの列を、どんな順位をつけるかを指定
        order by
            hanbai_tanka
    ) as ranking
from
    Shohin;

-- 上記 SQL の partition by を除いた SQL
select
    shohin_id,
    shohin_mei,
    shohin_bunrui,
    hanbai_tanka,
    rank () over (
        order by
            hanbai_tanka
    ) as ranking
from
    Shohin;