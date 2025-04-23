use belajar_sql;

create table wallet
(
    id          int not null auto_increment,
    id_customer int not null,
    balance     int not null default 0,
    primary key (id),
    unique key fk_id_customer_unique (id_customer),
    constraint fk_wallet_customer foreign key (id_customer) references customer (id)
);

show create table wallet;

select *
from customer;
select *
from wallet;

insert into wallet(id_customer)
values (1),
       (2);

select customer.email, wallet.balance
from wallet
         join customer on (wallet.id_customer = customer.id);