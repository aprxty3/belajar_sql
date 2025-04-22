use belajar_sql;

show
    databases;

create
    database belajar_sql;

drop
    database belajar_sql;

use
    belajar_sql;

show
    engines;

show
    tables;

describe barang;

create table barang
(
    id    int         not null default 0,
    nama  varchar(50) not null default '',
    harga int         not null default 0,
    stok  int                  default 0
);

show
    create table barang;

alter table barang
    add column nama_barang varchar(50) after id;

alter table barang
    rename column nama_barang to nama_product;

alter table barang
    modify nama_product varchar(50) after nama;

alter table barang
    modify id int not null default 0,
    modify nama varchar(50) default 'nama barang',
    modify nama_product varchar(50) not null default 'nama product',
    modify harga int not null default 0,
    modify stok int default 0;

alter table barang
    add column waktu_sekarang timestamp not null default current_timestamp;

alter table barang
    drop
        nama_product;

alter table barang
    drop
        waktu_sekarang;

insert into barang (id, nama)
values (2, 'barang 2');

select *
from barang;