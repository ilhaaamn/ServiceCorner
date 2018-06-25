CREATE TABLE db_service.data_detail_layanan
(
    id_detail int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_master int(11) NOT NULL,
    id_layanan varchar(5) NOT NULL,
    total_biaya int(11) NOT NULL,
    CONSTRAINT data_transaksi_layanan_data_transaksi_master_id_master_fk FOREIGN KEY (id_master) REFERENCES db_service.data_transaksi (id_master),
    CONSTRAINT data_transaksi_layanan_data_layanan_id_layanan_fk FOREIGN KEY (id_layanan) REFERENCES db_service.data_layanan (id_layanan)
);
CREATE INDEX data_transaksi_layanan_data_transaksi_master_id_master_fk ON db_service.data_detail_layanan (id_master);
CREATE INDEX data_transaksi_layanan_data_layanan_id_layanan_fk ON db_service.data_detail_layanan (id_layanan);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (1, 45, 'P2', 45000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (2, 46, 'P4', 100000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (3, 47, 'P2', 0);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (4, 48, 'P4', 100000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (5, 49, 'P4', 100000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (6, 50, 'P4', 100000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (7, 51, 'P4', 100000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (8, 52, 'P3', 75000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (9, 53, 'P3', 75000);
INSERT INTO db_service.data_detail_layanan (id_detail, id_master, id_layanan, total_biaya) VALUES (10, 54, 'P3', 75000);
CREATE TABLE db_service.data_detail_sparepart
(
    id_detail int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_master int(11) NOT NULL,
    id_part varchar(5) NOT NULL,
    jumlah int(11) NOT NULL,
    total_biaya int(11) NOT NULL,
    CONSTRAINT data_transaksi_sparepart_data_transaksi_master_id_master_fk FOREIGN KEY (id_master) REFERENCES db_service.data_transaksi (id_master),
    CONSTRAINT data_transaksi_sparepart_data_sparepart_id_part_fk FOREIGN KEY (id_part) REFERENCES db_service.data_sparepart (id_part)
);
CREATE INDEX data_transaksi_sparepart_data_transaksi_master_id_master_fk ON db_service.data_detail_sparepart (id_master);
CREATE INDEX data_transaksi_sparepart_data_sparepart_id_part_fk ON db_service.data_detail_sparepart (id_part);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (7, 45, 'AC', 2, 108000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (8, 45, 'ABL', 2, 626000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (9, 46, 'ALC', 4, 24000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (10, 46, 'ALC', 2, 12000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (11, 46, 'BA', 4, 48000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (12, 46, 'AGA2', 10, 3210000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (13, 47, 'ACA', 13, 2281500);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (14, 47, 'AGA1', 2, 520000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (15, 48, 'ACA', 13, 2281500);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (16, 48, 'AGA1', 2, 520000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (17, 49, 'ACA', 13, 2281500);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (18, 50, 'ACA', 2, 351000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (19, 51, 'ACA', 3, 526500);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (20, 52, 'PB', 1, 73000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (21, 52, 'ACF', 1, 1640100);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (22, 53, 'PB', 1, 73000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (23, 54, 'PB', 1, 73000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (24, 54, 'ARC', 1, 6000);
INSERT INTO db_service.data_detail_sparepart (id_detail, id_master, id_part, jumlah, total_biaya) VALUES (25, 54, 'BA', 1, 12000);
CREATE TABLE db_service.data_kasir
(
    id_kasir int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username varchar(30) NOT NULL,
    hash_password varchar(50) NOT NULL
);
CREATE UNIQUE INDEX data_kasir_username_uindex ON db_service.data_kasir (username);
INSERT INTO db_service.data_kasir (id_kasir, username, hash_password) VALUES (1, 'kasir1', '21232f297a57a5a743894a0e4a801fc3');
CREATE TABLE db_service.data_layanan
(
    id_layanan varchar(5) PRIMARY KEY NOT NULL,
    nama varchar(30) NOT NULL,
    harga int(11) NOT NULL
);
INSERT INTO db_service.data_layanan (id_layanan, nama, harga) VALUES ('P1', 'GANTI SPARE PART', 10000);
INSERT INTO db_service.data_layanan (id_layanan, nama, harga) VALUES ('P2', 'PAKET SERVICE RINGAN', 45000);
INSERT INTO db_service.data_layanan (id_layanan, nama, harga) VALUES ('P3', 'PAKET SERVICE BERAT', 75000);
INSERT INTO db_service.data_layanan (id_layanan, nama, harga) VALUES ('P4', 'PAKET SERVICE LENGKAP', 100000);
CREATE TABLE db_service.data_pelanggan
(
    id_pelanggan int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nama varchar(30) NOT NULL,
    no_telp varchar(12) NOT NULL,
    nopol_kendaraan varchar(20) NOT NULL,
    tahun_kendaraan year(4) NOT NULL,
    merk_kendaraan varchar(20) NOT NULL,
    tipe_kendaraan varchar(20) NOT NULL
);
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (1, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (2, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (3, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (4, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (5, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (6, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (7, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (8, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (9, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (10, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (11, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (12, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (13, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (14, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (15, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (16, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (17, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (18, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (19, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (20, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (21, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (22, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (23, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (24, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (25, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (26, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (27, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (28, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (29, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (30, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (31, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (32, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (33, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (34, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (35, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (36, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (37, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (38, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (39, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (40, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (41, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (42, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (43, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (44, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (45, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (46, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (47, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (48, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (49, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (50, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (51, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (52, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (53, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
INSERT INTO db_service.data_pelanggan (id_pelanggan, nama, no_telp, nopol_kendaraan, tahun_kendaraan, merk_kendaraan, tipe_kendaraan) VALUES (54, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');
CREATE TABLE db_service.data_sparepart
(
    id_part varchar(5) PRIMARY KEY NOT NULL,
    nama varchar(30) NOT NULL,
    harga int(11) NOT NULL
);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ABL', 'ADJ BRAKE LEVER', 313000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('AC', 'ADJUSTER CHAIN', 54000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ACA', 'AIR CLEANER ASSY', 175500);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ACF', 'AC GEN FLYWHEEL', 1640100);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ACGS', 'ARM COMP GEAR SHIFT', 31500);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ACL', 'ADJ CLUTCH LEVER', 313000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ACS', 'AIR CLEANER SET', 237000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ACU', 'ABS CONTROL UNIT', 11247000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('AG', 'AC GENGERATOR', 495000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('AGA1', 'AC GEN ASSY', 260000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('AGA2', 'AC GENERATOR ASSY', 321000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('AH', 'ADJUSTER HEADLIGHT', 8000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ALC', 'ADJUSTER L CHAIN', 6000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('ARC', 'ADJUSTER R CHAIN', 6000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('BA', 'BOLT ADAPTOR', 12000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('HA', 'HEADLIGHT ASSY', 165000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('HCA', 'HEAD CYLINDER ASSY', 490000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('MGRR', 'MUDGUARD RR', 10000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('PB', 'PEDAL BRAKE', 73000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('PK1', 'PISTON KIT (0.25)', 130000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('PS10', 'PISTON (1.00)', 138500);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('PS50', 'PISTON (0.50)', 50000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('PS75', 'PISTON (0.75)', 39100);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('RS25', 'RING SET (0.25)', 238000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('RS75', 'RING SET (0.75)', 368000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('SH', 'SOCKET HEADLIGHT ASSY', 48000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('SRL', 'STAY RADIATOR LOWER', 6000);
INSERT INTO db_service.data_sparepart (id_part, nama, harga) VALUES ('SWA', 'SWINGARM RR ASSY', 370000);
CREATE TABLE db_service.data_transaksi
(
    id_master int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tanggal date NOT NULL,
    id_pelanggan int(11) NOT NULL,
    id_kasir int(11) NOT NULL,
    total_tagihan int(11) NOT NULL,
    keluhan text NOT NULL,
    CONSTRAINT data_transaksi_data_pelanggan_id_pelanggan_fk FOREIGN KEY (id_pelanggan) REFERENCES db_service.data_pelanggan (id_pelanggan),
    CONSTRAINT data_transaksi_data_kasir_id_kasir_fk FOREIGN KEY (id_kasir) REFERENCES db_service.data_kasir (id_kasir)
);
CREATE INDEX data_transaksi_data_pelanggan_id_pelanggan_fk ON db_service.data_transaksi (id_pelanggan);
CREATE INDEX data_transaksi_data_kasir_id_kasir_fk ON db_service.data_transaksi (id_kasir);
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (45, '2018-06-20', 45, 1, 779000, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (46, '2018-06-13', 46, 1, 3394000, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (47, '2018-06-20', 47, 1, 2801500, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (48, '2018-06-20', 48, 1, 2901500, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (49, '2018-06-24', 49, 1, 2381500, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (50, '2018-06-24', 50, 1, 451000, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (51, '2018-06-24', 51, 1, 626500, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (52, '2018-06-25', 52, 1, 1788100, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (53, '2018-06-25', 53, 1, 148000, '-');
INSERT INTO db_service.data_transaksi (id_master, tanggal, id_pelanggan, id_kasir, total_tagihan, keluhan) VALUES (54, '2018-06-25', 54, 1, 166000, '-');