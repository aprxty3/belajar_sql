use belajar_sql;

#locking record
start transaction;

select *
from guest_book;

update guest_book
set title = 'contoh locking 1'
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
where id = 'P001' for
    update;

select *
from products
where id = 'P002' for
    update;

# lock table read
lock tables products read;

update products
set quantity = 100
where id = 'P001';

unlock tables;

# lock table write
lock tables products write;

update products
set quantity = quantity - 50
where id = 'P001';

unlock tables;

#locking intance
lock
instance for backup;
# but you can use lock read for replace lock instance
lock tables products read;

unlock
instance;
# you can use unlock tables for replace unlock instance
unlock tables;