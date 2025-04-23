use belajar_sql;

create table guest_book
(
    id      int          not null auto_increment,
    email   varchar(100) not null,
    title   varchar(200) not null,
    content text,
    primary key (id)
);

show create table guest_book;

insert into guest_book (email, title, content)
values ('guest1@gmail.com', 'hello', 'hello world'),
       ('guest2@gmail.com', 'hello', 'hello world'),
       ('guest3@gmail.com', 'hello', 'hello world'),
       ('aji@gmail.com', 'hello', 'hello world'),
       ('aji@gmail.com', 'hello', 'hello world'),
       ('aji@gmail.com', 'hello', 'hello world');

select *
from guest_book;

select distinct email
from guest_book
union
select distinct email
from customer;

select distinct email
from guest_book
union all
select distinct email
from customer;

select t.email, count(t.email)
from (select distinct email
      from guest_book
      union all
      select distinct email
      from customer) as t
group by t.email;

select distinct email
from guest_book
where email in (select email
                from customer);