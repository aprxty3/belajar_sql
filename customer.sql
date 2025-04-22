use belajar_sql;

create table customer
(
    id         int auto_increment not null,
    email      varchar(100)       not null,
    first_name varchar(100)       not null,
    last_name  varchar(100),
    primary key (id),
    unique key email_unique (email)
);

describe customer;

insert into customer (email, first_name, last_name)
values ('aji@gmail.com', 'aji', 'pras'),
       ('wew@gmail.com', 'we', 'wi');

select *
from customer;

insert into customer (email, first_name)
values ('aji@gmail.com', 'aji');

show create table customer;