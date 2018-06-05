<<<<<<< HEAD
/*
Navicat MySQL Data Transfer
=======
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
>>>>>>> f68a009b34c0f559578234f06d925304302ec20e

Source Server         : local
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : ddlservicecorner

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-06-06 00:51:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_kasir
-- ----------------------------
DROP TABLE IF EXISTS `data_kasir`;
CREATE TABLE `data_kasir` (
  `id_kasir` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `hash_password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kasir`),
  UNIQUE KEY `data_kasir_username_uindex` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_kasir
-- ----------------------------

-- ----------------------------
-- Table structure for data_layanan
-- ----------------------------
DROP TABLE IF EXISTS `data_layanan`;
CREATE TABLE `data_layanan` (
  `id_pelayanan` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_pelayanan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_layanan
-- ----------------------------
INSERT INTO `data_layanan` VALUES ('P1', 'GANTI SPARE PART', '10000');
INSERT INTO `data_layanan` VALUES ('P2', 'PAKET SERVICE RINGAN', '45000');
INSERT INTO `data_layanan` VALUES ('P3', 'PAKET SERVICE BERAT', '75000');
INSERT INTO `data_layanan` VALUES ('P4', 'PAKET SERVICE LENGKAP', '100000');

-- ----------------------------
-- Table structure for data_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `data_pelanggan`;
CREATE TABLE `data_pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `nopol_kendaraan` varchar(20) NOT NULL,
  `tahun_kendaraan` year(4) NOT NULL,
  `Tipe_kendaraan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pelanggan`),
  UNIQUE KEY `data_pelanggan_nopol_kendaraan_uindex` (`nopol_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_pelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for data_sparepart
-- ----------------------------
DROP TABLE IF EXISTS `data_sparepart`;
CREATE TABLE `data_sparepart` (
  `id_part` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_part`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_sparepart
-- ----------------------------
INSERT INTO `data_sparepart` VALUES ('', 'ADJ CLUTCH LEVER', '313000');
INSERT INTO `data_sparepart` VALUES ('ABL', 'ADJ BRAKE LEVER', '313000');
INSERT INTO `data_sparepart` VALUES ('AC', 'ADJUSTER CHAIN', '54000');
INSERT INTO `data_sparepart` VALUES ('ACA', 'AIR CLEANER ASSY', '175500');
INSERT INTO `data_sparepart` VALUES ('ACF', 'AC GEN FLYWHEEL', '1640100');
INSERT INTO `data_sparepart` VALUES ('ACGS', 'ARM COMP GEAR SHIFT', '31500');
INSERT INTO `data_sparepart` VALUES ('ACS', 'AIR CLEANER SET', '237000');
INSERT INTO `data_sparepart` VALUES ('ACU', 'ABS CONTROL UNIT', '11247000');
INSERT INTO `data_sparepart` VALUES ('AG', 'AC GENGERATOR', '495000');
INSERT INTO `data_sparepart` VALUES ('AGA1', 'AC GEN ASSY', '260000');
INSERT INTO `data_sparepart` VALUES ('AGA2', 'AC GENERATOR ASSY', '321000');
INSERT INTO `data_sparepart` VALUES ('AH', 'ADJUSTER HEADLIGHT', '8000');
INSERT INTO `data_sparepart` VALUES ('ALC', 'ADJUSTER L CHAIN', '6000');
INSERT INTO `data_sparepart` VALUES ('ARC', 'ADJUSTER R CHAIN', '6000');
INSERT INTO `data_sparepart` VALUES ('BA', 'BOLT ADAPTOR', '12000');
INSERT INTO `data_sparepart` VALUES ('HA', 'HEADLIGHT ASSY', '165000');
INSERT INTO `data_sparepart` VALUES ('HCA', 'HEAD CYLINDER ASSY', '490000');
INSERT INTO `data_sparepart` VALUES ('MGRR', 'MUDGUARD RR', '10000');
INSERT INTO `data_sparepart` VALUES ('PB', 'PEDAL BRAKE', '73000');
INSERT INTO `data_sparepart` VALUES ('PK1', 'PISTON KIT (0.25)', '130000');
INSERT INTO `data_sparepart` VALUES ('PS10', 'PISTON (1.00)', '138500');
INSERT INTO `data_sparepart` VALUES ('PS50', 'PISTON (0.50)', '50000');
INSERT INTO `data_sparepart` VALUES ('PS75', 'PISTON (0.75)', '39100');
INSERT INTO `data_sparepart` VALUES ('RS25', 'RING SET (0.25)', '238000');
INSERT INTO `data_sparepart` VALUES ('RS75', 'RING SET (0.75)', '368000');
INSERT INTO `data_sparepart` VALUES ('SH', 'SOCKET HEADLIGHT ASSY', '48000');
INSERT INTO `data_sparepart` VALUES ('SRL', 'STAY RADIATOR LOWER', '6000');
INSERT INTO `data_sparepart` VALUES ('SWA', 'SWINGARM RR ASSY', '370000');

-- ----------------------------
-- Table structure for data_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `data_transaksi`;
CREATE TABLE `data_transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `keluhan` text NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `data_transaksi_data_kasir_id_kasir_fk` (`id_kasir`),
  KEY `data_transaksi_data_pelanggan_id_pelanggan_fk` (`id_pelanggan`),
  CONSTRAINT `data_transaksi_data_kasir_id_kasir_fk` FOREIGN KEY (`id_kasir`) REFERENCES `data_kasir` (`id_kasir`),
  CONSTRAINT `data_transaksi_data_pelanggan_id_pelanggan_fk` FOREIGN KEY (`id_pelanggan`) REFERENCES `data_pelanggan` (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_transaksi
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
