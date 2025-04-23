use belajar_sql;

create table wishlist
(
    id          int         not null auto_increment,
    id_product  varchar(10) not null,
    description text,
    primary key (id),
    constraint fk_wishlist_product
        foreign key (id_product)
            references products (id)
);

show create table wishlist;
describe wishlist;

alter table wishlist
    drop constraint fk_wishlist_product;

alter table wishlist
    add constraint fk_wishlist_product foreign key (id_product) references products (id)
        on delete cascade
        on update cascade;

insert into wishlist (id_product, description)
values ('salah', 'enaakk');

insert into wishlist (id_product, description)
values ('P001', 'suka');

select *
from wishlist;

select *
from products;

delete
from products
where id = 'P009';

insert into wishlist (id_product, description)
values ('P009', 'suka');

select *
from wishlist
         join products on (wishlist.id_product = products.id);

select w.id          as wishlist_id,
       w.description as wishlist_description,
       p.id          as product_id,
       p.name        as product_name
from wishlist as w
         join products as p on (w.id_product = p.id);

describe customer;
describe wishlist;
show create table wishlist;

select *
from wishlist;

alter table wishlist
    add column id_customer int;

alter table wishlist
    drop column id_customer;

alter table wishlist
    add constraint fk_wishlist_customer foreign key (id_customer) references customer (id);

alter table wishlist
    drop constraint fk_wishlist_customer;

update wishlist
set id_customer = 1
where id = 2;

select c.email, p.id, p.name, w.description
from wishlist as w
         join products as p on (p.id = w.id_product)
         join customer as c on (c.id = w.id_customer);
