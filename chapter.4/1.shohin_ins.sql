create table shohinins (
    shohin_id char(4) not null,
    shohin_mei varchar(100) not null,
    shohin_bunrui varchar(32) not null,
    hanbai_tanka integer default 0,
    shiire_tanka integer,
    torokubi date,
    primary key (shohin_id)
);

-- shohinins のデータ登録
insert into
    shohinins (
        shohin_id,
        shohin_mei,
        shohin_bunrui,
        hanbai_tanka,
        shiire_tanka,
        torokubi
    )
values
    ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');

-- 列リストと値リストの数が不一致だとエラー
-- デフォルト値を設定している列を値リストで飛ばしてもエラーとなる
-- insert into
--     shohinins (
--         shohin_id,
--         shohin_mei,
--         shohin_bunrui,
--         hanbai_tanka,
--         shiire_tanka,
--         torokubi
--     )
-- values
--     ('0002', 'Yシャツ', '衣服', 3000, '2009-09-20');
-- 複数行 insert
insert into
    shohinins (
        shohin_id,
        shohin_mei,
        shohin_bunrui,
        hanbai_tanka,
        shiire_tanka,
        torokubi
    )
values
    ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11'),
    ('0003', 'カッターシャツ', '衣服', 4000, 2800, null),
    ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');

-- 上記と同じ insert 文
-- insert into
--     shohinins (
--         shohin_id,
--         shohin_mei,
--         shohin_bunrui,
--         hanbai_tanka,
--         shiire_tanka,
--         torokubi
--     )
-- values
--     ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
-- insert into
--     shohinins (
--         shohin_id,
--         shohin_mei,
--         shohin_bunrui,
--         hanbai_tanka,
--         shiire_tanka,
--         torokubi
--     )
-- values
--     ('0003', 'カッターシャツ', '衣服', 4000, 2800, null);
-- insert into
--     shohinins (
--         shohin_id,
--         shohin_mei,
--         shohin_bunrui,
--         hanbai_tanka,
--         shiire_tanka,
--         torokubi
--     )
-- values
--     ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');
-- 列リストの省略. 値リストの左から順に各列に割り当てられる
insert into
    shohinins
values
    (
        '0005',
        '圧力鍋',
        'キッチン用品',
        6800,
        5000,
        '2009-01-15'
    );

-- 上記と同じ insert
-- insert into
--     shohinins (
--         shohin_id,
--         shohin_mei,
--         shohin_bunrui,
--         hanbai_tanka,
--         shiire_tanka,
--         torokubi
--     )
-- values
--     ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');
-- null の登録. not null の列で指定するとエラーとなる
insert into
    shohinins
values
    (
        '0006',
        'フォーク',
        'キッチン用品',
        500,
        null,
        '2009-09-20'
    );

--    ('0007', 'ミキサー', null, 3000, null, '2009-09-20');
-- 明示的な default 値の使用
insert into
    shohinins (
        shohin_id,
        shohin_mei,
        shohin_bunrui,
        hanbai_tanka,
        shiire_tanka,
        torokubi
    )
values
    (
        '0007',
        'おろしがね',
        'キッチン用品',
        default,
        790,
        '2009-04-28'
    );

-- default が指定されていない列で default を指定すると null が入る
-- not null かつ default を指定していない列での default はエラーとなる
insert into
    shohinins
values
    (
        '0008',
        'ミキサー',
        default,
        3000,
        default,
        '2009-04-28'
    );