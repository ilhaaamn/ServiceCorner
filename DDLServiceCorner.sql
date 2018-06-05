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
  id_layanan varchar(5)  not null
    primary key,
  nama       varchar(30) not null,
  harga      int         not null
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

create table data_transaksi_master
(
  id_master     int auto_increment
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

create table data_transaksi_layanan
(
  id_transaksi int auto_increment
    primary key,
  id_master    int        not null,
  id_layanan   varchar(5) not null,
  total_biaya  int        not null,
  constraint data_transaksi_layanan_data_transaksi_master_id_master_fk
  foreign key (id_master) references data_transaksi_master (id_master),
  constraint data_transaksi_layanan_data_layanan_id_layanan_fk
  foreign key (id_layanan) references data_layanan (id_layanan)
);

create index data_transaksi_layanan_data_layanan_id_layanan_fk
  on data_transaksi_layanan (id_layanan);

create index data_transaksi_layanan_data_transaksi_master_id_master_fk
  on data_transaksi_layanan (id_master);

create index data_transaksi_data_kasir_id_kasir_fk
  on data_transaksi_master (id_kasir);

create index data_transaksi_data_pelanggan_id_pelanggan_fk
  on data_transaksi_master (id_pelanggan);

create table data_transaksi_sparepart
(
  id_transaksi int auto_increment
    primary key,
  id_master    int        not null,
  id_part      varchar(5) not null,
  jumlah       int        not null,
  total_biaya  int        not null,
  constraint data_transaksi_sparepart_data_transaksi_master_id_master_fk
  foreign key (id_master) references data_transaksi_master (id_master),
  constraint data_transaksi_sparepart_data_sparepart_id_part_fk
  foreign key (id_part) references data_sparepart (id_part)
);

create index data_transaksi_sparepart_data_sparepart_id_part_fk
  on data_transaksi_sparepart (id_part);

create index data_transaksi_sparepart_data_transaksi_master_id_master_fk
  on data_transaksi_sparepart (id_master);


