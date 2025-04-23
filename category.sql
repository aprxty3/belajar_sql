use belajar_sql;

create table categories
(
    id   varchar(10) not null,
    name varchar(10) not null,
    primary key (id)
);

describe categories;
describe products;
show create table products;

alter table products
    add column category_id varchar(10);


alter table products
    add constraint fk_product_categories foreign key (category_id)
        references categories (id);

select *
from products;

select *
from categories;

insert into categories (id, name)
VALUES ('C001', 'Makanan'),
       ('C002', 'Minuman'),
       ('C003', 'Lainnya');

update products
set category_id = case
                      when id in ('P007', 'P008') then 'C002'
                      when id in ('P010', 'P011') then 'C003'
                      else 'C001' end
where id in ('P007', 'P008', 'P010', 'P011');

select products.id, products.name, categories.name
from products
         join categories on (products.category_id = categories.id);

insert into categories (id, name)
VALUES ('C004', 'Oleh-oleh'),
       ('C005', 'Bingkisan');

select *
from categories;

select *
from categories
         inner join products on (products.category_id = categories.id);

select *
from categories
         left join products on (products.category_id = categories.id);

select *
from categories
         right join products on (products.category_id = categories.id);