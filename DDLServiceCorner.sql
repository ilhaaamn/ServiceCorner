create table data_kasir
(
  id_kasir      int auto_increment
    primary key,
  username      varchar(30) not null,
  hash_password varchar(50) not null,
  constraint data_kasir_username_uindex
  unique (username)
);

create table data_layanan
(
  id_pelayanan varchar(5)  not null
    primary key,
  nama         varchar(30) not null,
  harga        int         not null
);

create table data_pelanggan
(
  id_pelanggan    int auto_increment
    primary key,
  nama            varchar(30) not null,
  nopol_kendaraan varchar(20) not null,
  tahun_kendaraan year        not null,
  Tipe_kendaraan  varchar(20) not null,
  constraint data_pelanggan_nopol_kendaraan_uindex
  unique (nopol_kendaraan)
);

create table data_sparepart
(
  id_part varchar(5)  not null
    primary key,
  nama    varchar(30) not null,
  harga   int         not null
);

create table data_transaksi
(
  id_transaksi  int auto_increment
    primary key,
  tanggal       date not null,
  id_pelanggan  int  not null,
  id_kasir      int  not null,
  total_tagihan int  not null,
  keluhan       text not null,
  constraint data_transaksi_data_pelanggan_id_pelanggan_fk
  foreign key (id_pelanggan) references data_pelanggan (id_pelanggan),
  constraint data_transaksi_data_kasir_id_kasir_fk
  foreign key (id_kasir) references data_kasir (id_kasir)
);

create index data_transaksi_data_kasir_id_kasir_fk
  on data_transaksi (id_kasir);

create index data_transaksi_data_pelanggan_id_pelanggan_fk
  on data_transaksi (id_pelanggan);


