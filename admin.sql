use belajar_sql;


describe admin;

create table admin
(
    id         int auto_increment not null,
    first_name varchar(100)       not null default '',
    last_name  varchar(100)       not null default '',
    primary key (id)
);

insert into admin (first_name, last_name) value ('aji', 'prasetyo'),
    ('budi', 'setiawan'),
    ('cahyo', 'prabowo'),
    ('doni', 'sukmawan'),
    ('eko', 'prasetyo'),
    ('fajar', 'setiawan'),
    ('gilang', 'prabowo'),
    ('hendra', 'sukmawan'),
    ('indra', 'prasetyo'),
    ('joko', 'setiawan');

select *
from admin;

delete
from admin
where id = 6;

select last_insert_id();