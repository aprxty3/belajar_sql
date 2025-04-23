use belajar_sql;

#locking record
start transaction;

select *
from guest_book;

update guest_book
set title = 'contoh locking 2'
where id = 10;

commit;

#for update
start transaction;

select *
from products
where id = 'P001' for
update;

update products
set quantity = quantity - 10
where id = 'P001';

commit;

# deadlock
start transaction;

select *
from products
where id = 'P002' for
update;

select *
from products
where id = 'P001' for
update;

# lock table read
select *
from products;

update products
set quantity = 100
where id = 'P001';

# lock table write
select *
from products;

#locking intance
alter table products
    add column sample varchar(50);

