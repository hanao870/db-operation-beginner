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
