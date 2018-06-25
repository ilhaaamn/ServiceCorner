-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 09:33 AM
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
    (10, 54, 'P3', 75000);

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
    (25, 54, 'BA', 1, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `data_kasir`
--

CREATE TABLE `data_kasir` (
    `id_kasir` int(11) NOT NULL,
    `username` varchar(30) NOT NULL,
    `hash_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kasir`
--

INSERT INTO `data_kasir` (`id_kasir`, `username`, `hash_password`) VALUES
    (1, 'kasir1', '21232f297a57a5a743894a0e4a801fc3');

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
    (1, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (2, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (3, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (4, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (5, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (6, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (7, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (8, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (9, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (10, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (11, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (12, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (13, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (14, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (15, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (16, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (17, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (18, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (19, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (20, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (21, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (22, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (23, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (24, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (25, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (26, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (27, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (28, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (29, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (30, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (31, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (32, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (33, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (34, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (35, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (36, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (37, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (38, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (39, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (40, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (41, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (42, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (43, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (44, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (45, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (46, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (47, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (48, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (49, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (50, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (51, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (52, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (53, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul'),
    (54, 'Hamnoer', '0891230', 'D 09213 BJ', 2012, 'Honda', 'Mio Soul');

-- --------------------------------------------------------

--
-- Table structure for table `data_sparepart`
--

CREATE TABLE `data_sparepart` (
    `id_part` varchar(5) NOT NULL,
    `nama` varchar(30) NOT NULL,
    `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_sparepart`
--

INSERT INTO `data_sparepart` (`id_part`, `nama`, `harga`) VALUES
    ('ABL', 'ADJ BRAKE LEVER', 313000),
    ('AC', 'ADJUSTER CHAIN', 54000),
    ('ACA', 'AIR CLEANER ASSY', 175500),
    ('ACF', 'AC GEN FLYWHEEL', 1640100),
    ('ACGS', 'ARM COMP GEAR SHIFT', 31500),
    ('ACL', 'ADJ CLUTCH LEVER', 313000),
    ('ACS', 'AIR CLEANER SET', 237000),
    ('ACU', 'ABS CONTROL UNIT', 11247000),
    ('AG', 'AC GENGERATOR', 495000),
    ('AGA1', 'AC GEN ASSY', 260000),
    ('AGA2', 'AC GENERATOR ASSY', 321000),
    ('AH', 'ADJUSTER HEADLIGHT', 8000),
    ('ALC', 'ADJUSTER L CHAIN', 6000),
    ('ARC', 'ADJUSTER R CHAIN', 6000),
    ('BA', 'BOLT ADAPTOR', 12000),
    ('HA', 'HEADLIGHT ASSY', 165000),
    ('HCA', 'HEAD CYLINDER ASSY', 490000),
    ('MGRR', 'MUDGUARD RR', 10000),
    ('PB', 'PEDAL BRAKE', 73000),
    ('PK1', 'PISTON KIT (0.25)', 130000),
    ('PS10', 'PISTON (1.00)', 138500),
    ('PS50', 'PISTON (0.50)', 50000),
    ('PS75', 'PISTON (0.75)', 39100),
    ('RS25', 'RING SET (0.25)', 238000),
    ('RS75', 'RING SET (0.75)', 368000),
    ('SH', 'SOCKET HEADLIGHT ASSY', 48000),
    ('SRL', 'STAY RADIATOR LOWER', 6000),
    ('SWA', 'SWINGARM RR ASSY', 370000);

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
    (54, '2018-06-25', 54, 1, 166000, '-');

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
    MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_detail_sparepart`
--
ALTER TABLE `data_detail_sparepart`
    MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `data_kasir`
--
ALTER TABLE `data_kasir`
    MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
    MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
    MODIFY `id_master` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
