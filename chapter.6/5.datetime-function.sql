-- 現在の日付を取得
select
    CURRENT_DATE;

-- 現在時刻を取得
select
    CURRENT_TIME;

-- 現在の日時を取得
select
    CURRENT_TIMESTAMP;

-- 日付要素の切り出し
select
    CURRENT_TIMESTAMP,
    EXTRACT(
        year
        from
            CURRENT_TIMESTAMP
    ) as year,
    EXTRACT(
        month
        from
            CURRENT_TIMESTAMP
    ) as month,
    EXTRACT(
        day
        from
            CURRENT_TIMESTAMP
    ) as day,
    EXTRACT(
        hour
        from
            CURRENT_TIMESTAMP
    ) as hour,
    EXTRACT(
        minute
        from
            CURRENT_TIMESTAMP
    ) as minute,
    EXTRACT(
        second
        from
            CURRENT_TIMESTAMP
    ) as second;