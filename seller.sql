use belajar_sql;

create table seller
(
    id         int auto_increment not null,
    email      varchar(100)       not null,
    first_name varchar(100)       not null,
    last_name  varchar(100),
    primary key (id),
    unique key email_unique (email),
    index idx_first_name (first_name),
    index idx_last_name (last_name),
    index idx_first_last_name (first_name, last_name)
);

show create table seller;

select *
from seller
where first_name = 'aji';

select *
from seller
where last_name = 'aji';

select *
from seller
where first_name = 'aji'
  and last_name = 'aji';

alter table seller
    drop index idx_first_name;

alter table seller
    add index idx_first_name (first_name);
