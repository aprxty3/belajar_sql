use belajar_sql;

create table products
(
    id          varchar(10)  not null,
    name        varchar(100) not null,
    description text,
    price       int unsigned not null,
    quantity    int unsigned not null default 0,
    created_at  timestamp    not null default current_timestamp
);

describe products;

select *
from products;

select id, name, price
from products;

select *
from products
where quantity = 100;

insert into products(id, name, price, quantity)
values ('P003', 'Mie Ayam Tahu', 12000, 20),
       ('P004', 'Mie Ayam Koyor', 12000, 50),
       ('P005', 'Mie Ayam Bakso Besar', 20000, 30);

insert into products(id, name, description, price, quantity)
values ('P002', 'Mie Ayam Bakso', 'Mie Ayam dengan Bakso Mojokerto', 10000, 100);

update products
set price    = 15000,
    quantity = 50
where id = 'P002';

alter table products
    add primary key (id);

alter table products
    add category enum ('Makanan', 'Minuman', 'Lainnya') after name;

update products
set category = 'Makanan'
where id in ('P002', 'P003', 'P004', 'P005');

update products
set description = 'Mie Ayam biasa dengan Bakso',
    price       = price + 1000
where id = 'P002';

insert into products (id, name, description, price, quantity)
values ('P006', 'Mie Ayam Kecil', 'Mie Ayam dengan Bakso Kecil', 8000, 10);

delete
from products
where id = 'P006';

select p.id as id, p.name as nama, p.description as desk, p.price as harga, p.quantity as qty
from products as p;


select *
from products
where category is null;
select *
from products
where category is not null;

select *
from products
where quantity < 100
  and price > 15000;

select *
from products
where quantity < 100
   or price > 15000;

select *
from products
where price between 15000 and 20000;

select *
from products
where price not between 15000 and 20000;

select *
from products
where description like '%bakso%';

select id, name, price, quantity
from products
order by price, quantity desc;

select *
from products
order by id
limit 2;

select *
from products
order by id
limit 2, 2;

select 10 * 10 as hasil;

select id, name, price, price div 1000 as harga_ribuan, price mod 7 as sisa
from products;

select power(10, 2)        as kuadrat,
       sqrt(100)           as akar,
       round(10.123456, 2) as bulat,
       ceil(10.123456)     as atas,
       floor(10.123456)    as bawah,
       abs(-10.123456)     as mutlak,
       pi()                as phi,
       rand()              as acak;

select *
from products;