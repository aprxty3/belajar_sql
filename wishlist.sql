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