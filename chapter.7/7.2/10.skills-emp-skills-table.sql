-- DDM:テーブル作成
create table Skills (skill varchar(32), primary key (skill));

create table EmpSkills (
    emp varchar(32),
    skill varchar(32),
    primary key (emp, skill)
);

truncate Skills;

truncate EmpSkills;

-- DML:データ登録
begin transaction;

insert into
    Skills
values
    ('Oracle');

insert into
    Skills
values
    ('UNIX');

insert into
    Skills
values
    ('Java');

insert into
    EmpSkills
values
    ('相田', 'Oracle');

insert into
    EmpSkills
values
    ('相田', 'UNIX');

insert into
    EmpSkills
values
    ('相田', 'Java');

insert into
    EmpSkills
values
    ('相田', 'C#');

insert into
    EmpSkills
values
    ('神崎', 'Oracle');

insert into
    EmpSkills
values
    ('神崎', 'UNIX');

insert into
    EmpSkills
values
    ('神崎', 'Java');

insert into
    EmpSkills
values
    ('平井', 'UNIX');

insert into
    EmpSkills
values
    ('平井', 'Oracle');

insert into
    EmpSkills
values
    ('平井', 'PHP');

insert into
    EmpSkills
values
    ('平井', 'Perl');

insert into
    EmpSkills
values
    ('平井', 'C++');

insert into
    EmpSkills
values
    ('若田部', 'Perl');

insert into
    EmpSkills
values
    ('渡来', 'Oracle');

commit;

select
    *
from
    Skills;

select
    *
from
    EmpSkills;