-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2018 at 07:59 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_detail_layanan`
--

CREATE TABLE `data_detail_layanan` (
    `id_detail` int(11) NOT NULL,
    `id_master` int(11) NOT NULL,
    `id_layanan` varchar(5) NOT NULL,
    `total_biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_detail_layanan`
--

INSERT INTO `data_detail_layanan` (`id_detail`, `id_master`, `id_layanan`, `total_biaya`) VALUES
    (1, 45, 'P2', 45000),
    (2, 46, 'P4', 100000),
    (3, 47, 'P2', 0),
    (4, 48, 'P4', 100000),
    (5, 49, 'P4', 100000),
    (6, 50, 'P4', 100000),
    (7, 51, 'P4', 100000),
    (8, 52, 'P3', 75000),
    (9, 53, 'P3', 75000),
    (10, 54, 'P3', 75000),
    (11, 55, 'P2', 45000),
    (12, 56, 'P3', 75000),
    (13, 57, 'P4', 100000),
    (14, 60, 'P2', 45000),
    (15, 66, 'P2', 45000),
    (16, 67, 'P2', 45000),
    (17, 68, 'P3', 75000);

-- --------------------------------------------------------

--
-- Table structure for table `data_detail_sparepart`
--

CREATE TABLE `data_detail_sparepart` (
    `id_detail` int(11) NOT NULL,
    `id_master` int(11) NOT NULL,
    `id_part` varchar(5) NOT NULL,
    `jumlah` int(11) NOT NULL,
    `total_biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_detail_sparepart`
--

INSERT INTO `data_detail_sparepart` (`id_detail`, `id_master`, `id_part`, `jumlah`, `total_biaya`) VALUES
    (7, 45, 'AC', 2, 108000),
    (8, 45, 'ABL', 2, 626000),
    (9, 46, 'ALC', 4, 24000),
    (10, 46, 'ALC', 2, 12000),
    (11, 46, 'BA', 4, 48000),
    (12, 46, 'AGA2', 10, 3210000),
    (13, 47, 'ACA', 13, 2281500),
    (14, 47, 'AGA1', 2, 520000),
    (15, 48, 'ACA', 13, 2281500),
    (16, 48, 'AGA1', 2, 520000),
    (17, 49, 'ACA', 13, 2281500),
    (18, 50, 'ACA', 2, 351000),
    (19, 51, 'ACA', 3, 526500),
    (20, 52, 'PB', 1, 73000),
    (21, 52, 'ACF', 1, 1640100),
    (22, 53, 'PB', 1, 73000),
    (23, 54, 'PB', 1, 73000),
    (24, 54, 'ARC', 1, 6000),
    (25, 54, 'BA', 1, 12000),
    (26, 55, 'AC', 2, 108000),
    (27, 55, 'HA', 1, 165000),
    (28, 55, 'PB', 1, 73000),
    (29, 56, 'ACA', 1, 175500),
    (30, 56, 'ACU', 2, 22494000),
    (31, 56, 'AG', 3, 1485000),
    (32, 57, 'ACL', 1, 313000),
    (33, 57, 'ACGS', 2, 63000),
    (34, 58, 'AC', 5, 270000),
    (35, 59, 'AC', 5, 270000),
    (36, 60, 'AC', 5, 270000),
    (37, 66, 'AC', 1, 54000),
    (38, 66, 'BA', 1, 12000),
    (39, 67, 'ABL', 1, 313000),
    (40, 68, 'ACF', 1, 1640100);

-- --------------------------------------------------------

--
-- Table structure for table `data_kasir`
--

CREATE TABLE `data_kasir` (
    `id_kasir` int(11) NOT NULL,
    `username` varchar(30) NOT NULL,
    `hash_password` varchar(50) NOT NULL,
    `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kasir`
--

INSERT INTO `data_kasir` (`id_kasir`, `username`, `hash_password`, `role`) VALUES
    (1, 'kasir1', '21232f297a57a5a743894a0e4a801fc3', 'kasir'),
    (2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_layanan`
--

CREATE TABLE `data_layanan` (
    `id_layanan` varchar(5) NOT NULL,
    `nama` varchar(30) NOT NULL,
    `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_layanan`
--

INSERT INTO `data_layanan` (`id_layanan`, `nama`, `harga`) VALUES
    ('P1', 'GANTI SPARE PART', 10000),
    ('P2', 'PAKET SERVICE RINGAN', 45000),
    ('P3', 'PAKET SERVICE BERAT', 75000),
    ('P4', 'PAKET SERVICE LENGKAP', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE `data_pelanggan` (
    `id_pelanggan` int(11) NOT NULL,
    `nama` varchar(30) NOT NULL,
    `no_telp` varchar(12) NOT NULL,
    `nopol_kendaraan` varchar(20) NOT NULL,
    `tahun_kendaraan` year(4) NOT NULL,
    `merk_kendaraan` varchar(20) NOT NULL,
    `tipe_kendaraan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`id_pelanggan`, `nama`, `no_telp`, `nopol_kendaraan`, `tahun_kendaraan`, `merk_kendaraan`, `tipe_kendaraan`) VALUES
    (1, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (2, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (3, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (4, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (5, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (6, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (7, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (8, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (9, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (10, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (11, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (12, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (13, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (14, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (15, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (16, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (17, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (18, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (19, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (20, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (21, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (22, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (23, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (24, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (25, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (26, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (27, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (28, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (29, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (30, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (31, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (32, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (33, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (34, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (35, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (36, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (37, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (38, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (39, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (40, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (41, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (42, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (43, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (44, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (45, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (46, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (47, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (48, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (49, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (50, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (51, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (52, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (53, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (54, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (55, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (56, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (57, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (58, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (59, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (60, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (61, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (62, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (63, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (64, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (65, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'HONDA', 'MIO SOUL'),
    (66, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (67, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (68, 'HAMNOER', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (69, '', '', '', 0000, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_sparepart`
--

CREATE TABLE `data_sparepart` (
    `id_part` varchar(5) NOT NULL,
    `nama` varchar(30) NOT NULL,
    `harga` int(11) NOT NULL,
    `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_sparepart`
--

INSERT INTO `data_sparepart` (`id_part`, `nama`, `harga`, `stok`) VALUES
    ('ABL', 'ADJ BRAKE LEVER', 313000, 99),
    ('AC', 'ADJUSTER CHAIN', 54000, 94),
    ('ACA', 'AIR CLEANER ASSY', 175500, 100),
    ('ACF', 'AC GEN FLYWHEEL', 1640100, 99),
    ('ACGS', 'ARM COMP GEAR SHIFT', 31500, 100),
    ('ACL', 'ADJ CLUTCH LEVER', 313000, 100),
    ('ACS', 'AIR CLEANER SET', 237000, 100),
    ('ACU', 'ABS CONTROL UNIT', 11247000, 100),
    ('AG', 'AC GENGERATOR', 495000, 100),
    ('AGA1', 'AC GEN ASSY', 260000, 100),
    ('AGA2', 'AC GENERATOR ASSY', 321000, 100),
    ('AH', 'ADJUSTER HEADLIGHT', 8000, 100),
    ('ALC', 'ADJUSTER L CHAIN', 6000, 100),
    ('ARC', 'ADJUSTER R CHAIN', 6000, 100),
    ('BA', 'BOLT ADAPTOR', 12000, 99),
    ('HA', 'HEADLIGHT ASSY', 165000, 100),
    ('HCA', 'HEAD CYLINDER ASSY', 490000, 100),
    ('MGRR', 'MUDGUARD RR', 10000, 100),
    ('PB', 'PEDAL BRAKE', 73000, 100),
    ('PK1', 'PISTON KIT (0.25)', 130000, 100),
    ('PS10', 'PISTON (1.00)', 138500, 100),
    ('PS50', 'PISTON (0.50)', 50000, 100),
    ('PS75', 'PISTON (0.75)', 39100, 100),
    ('RS25', 'RING SET (0.25)', 238000, 100),
    ('RS75', 'RING SET (0.75)', 368000, 100),
    ('SH', 'SOCKET HEADLIGHT ASSY', 48000, 100),
    ('SRL', 'STAY RADIATOR LOWER', 6000, 100),
    ('SWA', 'SWINGARM RR ASSY', 370000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `data_transaksi`
--

CREATE TABLE `data_transaksi` (
    `id_master` int(11) NOT NULL,
    `tanggal` date NOT NULL,
    `id_pelanggan` int(11) NOT NULL,
    `id_kasir` int(11) NOT NULL,
    `total_tagihan` int(11) NOT NULL,
    `keluhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_transaksi`
--

INSERT INTO `data_transaksi` (`id_master`, `tanggal`, `id_pelanggan`, `id_kasir`, `total_tagihan`, `keluhan`) VALUES
    (45, '2018-06-20', 45, 1, 779000, '-'),
    (46, '2018-06-13', 46, 1, 3394000, '-'),
    (47, '2018-06-20', 47, 1, 2801500, '-'),
    (48, '2018-06-20', 48, 1, 2901500, '-'),
    (49, '2018-06-24', 49, 1, 2381500, '-'),
    (50, '2018-06-24', 50, 1, 451000, '-'),
    (51, '2018-06-24', 51, 1, 626500, '-'),
    (52, '2018-06-25', 52, 1, 1788100, '-'),
    (53, '2018-06-25', 53, 1, 148000, '-'),
    (54, '2018-06-25', 54, 1, 166000, '-'),
    (55, '2018-06-25', 55, 1, 391000, '-'),
    (56, '2018-06-25', 56, 1, 24229500, '-'),
    (57, '2018-06-25', 57, 1, 476000, '-'),
    (58, '2018-06-25', 58, 1, 315000, '-'),
    (59, '2018-06-25', 59, 1, 315000, '-'),
    (60, '2018-06-25', 60, 1, 315000, '-'),
    (66, '2018-06-26', 66, 1, 111000, '-'),
    (67, '2018-06-26', 67, 1, 358000, '-'),
    (68, '2018-06-26', 68, 1, 1715100, '-'),
    (69, '2018-06-26', 69, 2, 0, '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_detail_layanan`
--
ALTER TABLE `data_detail_layanan`
    ADD PRIMARY KEY (`id_detail`),
    ADD KEY `data_transaksi_layanan_data_transaksi_master_id_master_fk` (`id_master`),
    ADD KEY `data_transaksi_layanan_data_layanan_id_layanan_fk` (`id_layanan`);

--
-- Indexes for table `data_detail_sparepart`
--
ALTER TABLE `data_detail_sparepart`
    ADD PRIMARY KEY (`id_detail`),
    ADD KEY `data_transaksi_sparepart_data_transaksi_master_id_master_fk` (`id_master`),
    ADD KEY `data_transaksi_sparepart_data_sparepart_id_part_fk` (`id_part`);

--
-- Indexes for table `data_kasir`
--
ALTER TABLE `data_kasir`
    ADD PRIMARY KEY (`id_kasir`),
    ADD UNIQUE KEY `data_kasir_username_uindex` (`username`);

--
-- Indexes for table `data_layanan`
--
ALTER TABLE `data_layanan`
    ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
    ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `data_sparepart`
--
ALTER TABLE `data_sparepart`
    ADD PRIMARY KEY (`id_part`);

--
-- Indexes for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
    ADD PRIMARY KEY (`id_master`),
    ADD KEY `data_transaksi_data_pelanggan_id_pelanggan_fk` (`id_pelanggan`),
    ADD KEY `data_transaksi_data_kasir_id_kasir_fk` (`id_kasir`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_detail_layanan`
--
ALTER TABLE `data_detail_layanan`
    MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `data_detail_sparepart`
--
ALTER TABLE `data_detail_sparepart`
    MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `data_kasir`
--
ALTER TABLE `data_kasir`
    MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
    MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
    MODIFY `id_master` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_detail_layanan`
--
ALTER TABLE `data_detail_layanan`
    ADD CONSTRAINT `data_transaksi_layanan_data_layanan_id_layanan_fk` FOREIGN KEY (`id_layanan`) REFERENCES `data_layanan` (`id_layanan`),
    ADD CONSTRAINT `data_transaksi_layanan_data_transaksi_master_id_master_fk` FOREIGN KEY (`id_master`) REFERENCES `data_transaksi` (`id_master`);

--
-- Constraints for table `data_detail_sparepart`
--
ALTER TABLE `data_detail_sparepart`
    ADD CONSTRAINT `data_transaksi_sparepart_data_sparepart_id_part_fk` FOREIGN KEY (`id_part`) REFERENCES `data_sparepart` (`id_part`),
    ADD CONSTRAINT `data_transaksi_sparepart_data_transaksi_master_id_master_fk` FOREIGN KEY (`id_master`) REFERENCES `data_transaksi` (`id_master`);

--
-- Constraints for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
    ADD CONSTRAINT `data_transaksi_data_kasir_id_kasir_fk` FOREIGN KEY (`id_kasir`) REFERENCES `data_kasir` (`id_kasir`),
    ADD CONSTRAINT `data_transaksi_data_pelanggan_id_pelanggan_fk` FOREIGN KEY (`id_pelanggan`) REFERENCES `data_pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
