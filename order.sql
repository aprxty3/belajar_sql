use belajar_sql;

create table orders
(
    id         int       not null auto_increment,
    total      int       not null,
    order_date timestamp not null default current_timestamp,
    primary key (id)
);

show create table orders;
show create table order_details;
desc products;
desc orders;

create table order_details
(
    product_id varchar(10) not null,
    order_id   int         not null,
    quantity   int         not null,
    price      int         not null,
    primary key (product_id, order_id),
    constraint fk_order_details_product foreign key (product_id) references products (id),
    constraint fk_order_details_order foreign key (order_id) references orders (id)
);

insert into orders(total)
values (100000),
       (200000),
       (300000),
       (100000),
       (50000);

select *
from orders;

insert into order_details(product_id, order_id, price, quantity)
values ('P001', 1, 25000, 2),
       ('P002', 1, 5000, 1),
       ('P004', 2, 15000, 3),
       ('P003', 2, 25000, 6),
       ('P001', 3, 10000, 2),
       ('P003', 3, 50000, 2);

select *
from order_details;

select *
from orders
         join order_details od on (od.order_id = orders.id)
         join products on (products.id = od.product_id);

select orders.id, products.id, od.quantity, od.price
from orders
         join order_details od on (od.order_id = orders.id)
         join products on (products.id = od.product_id);
