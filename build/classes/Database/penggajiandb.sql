-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 04:31 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penggajiandb`
--
CREATE DATABASE IF NOT EXISTS `penggajiandb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `penggajiandb`;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(20) NOT NULL,
  `gaji_pokok` double NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`),
  UNIQUE KEY `id_jabatan` (`id_jabatan`),
  UNIQUE KEY `nama_jabatan` (`nama_jabatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=963017 ;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `deskripsi`) VALUES
(963001, 'Presiden Direktur', 300000000, 'Mengatur dan memimpin sebuah perusahaan'),
(963002, 'Executive (GM)', 25000000, 'Membantu Direktur Utama dalam memimpin dan mengarahkan perusahaann'),
(963003, 'General Manager', 20000000, 'Mengatur dan memanage bagian bagian perusahaan'),
(963004, 'Manager Keuangan', 10000000, 'Mengepalai Bidang keuangan perusahaan'),
(963005, 'Manager Personalia', 10000000, 'Kepala Bidang SDM'),
(963006, 'Kepala HRD', 10000000, 'Mengepalai HRD'),
(963007, 'Manager Produksi', 10000000, 'Mengepalai Bagian Produksi'),
(963008, 'Manager Marketing', 10000000, 'Mengepalai Bagian Pemasaran'),
(963009, 'Staf Keuangan', 2000000, 'Staf Bidang Keuangan'),
(963010, 'Staf HRD', 2000000, 'Staf Bidang HRD'),
(963011, 'Staf Marketing', 2000000, 'Staf Bidang Marketing'),
(963012, 'Kepala Pengadaan', 3000000, 'Mengepalai Bidang Pengadaan'),
(963013, 'Kepala Keamanan', 3000000, 'Mengepalai Bidang Keamanan'),
(963014, 'Kepala Gudang', 3000000, 'Mengepalai dan Mengatur Sistem Pergudangan'),
(963015, 'Security A', 2000000, 'Petugas Keamanan level 1'),
(963016, 'Security B', 1800000, 'Petugas Keamanan Level 2');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `id_jabatan` int(10) NOT NULL,
  `status` enum('Admin','User') NOT NULL,
  `kontak` varchar(60) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_jabatan_2` (`id_jabatan`),
  KEY `id_jabatan_3` (`id_jabatan`),
  KEY `id_jabatan` (`id_jabatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33014 ;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_user`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `id_jabatan`, `status`, `kontak`, `alamat`) VALUES
(33001, 'M. Fairul Filza', 'Laki-Laki', 'NTT', '19-12-1967', 'Islam', 963001, 'Admin', '089627164495', 'Yogyakarta'),
(33002, 'Yuliantina', 'Perempuan', 'Padang', '28-07-1994', 'Islam', 963002, 'User', '085769131133', 'Yogyakarta'),
(33003, 'Ridwan E.P', 'Laki-Laki', 'Ponorogo', '05-12-1990', 'Islam', 963003, 'User', 'PejuangTangguh@mail.om_om', 'Perum MBS. Concat'),
(33004, 'Adji Sukmana', 'Laki-Laki', 'Bandung', '05-12-1990', 'Islam', 963014, 'User', '087913556245', 'Jl. Teratai 2 No 63. Concat'),
(33005, 'Zazuli Aziz', 'Laki-Laki', 'Martapura', '04-03-1994', 'Islam', 963005, 'Admin', '089627164495', 'Jl. Teratai 2, No. 63'),
(33006, 'Ani Lestari', 'Perempuan', 'Buleleng', '09-12-1983', 'Islam', 963004, 'User', '089627164495', 'Yogyakarta'),
(33007, 'Akhmad Khairur Razi', 'Laki-Laki', 'Madura', '24-12-1981', 'Islam', 963013, 'User', '089723546252', 'Madura Takye'),
(33008, 'Budi Santoso', 'Laki-Laki', 'Cirebon', '09-12-1981', 'Islam', 963011, 'User', 'Budi@ymail.com', 'Yogyakarta'),
(33009, 'Dwi Winarno', 'Laki-Laki', 'Klaten', '04-02-1987', 'Islam', 963012, 'User', '089623456578', 'CondongCatur'),
(33010, 'Muslimin Hidayat', 'Laki-Laki', 'SonoSewu', '28-07-1989', 'Islam', 963015, 'User', '025458794515', 'Godean, Sleman'),
(33011, 'Eka Yuliana', 'Perempuan', 'Lampung', '28-07-1992', 'Islam', 963007, 'User', 'Yuliana@mail.com', 'Perum. MBS, Concat'),
(33012, 'Ramadhan Wahid', 'Laki-Laki', 'Bandung', '28-07-1987', 'Islam', 963010, 'User', '0245789966235', 'Yogyakarta'),
(33013, 'Ahmad Asyraf Zaki', 'Perempuan', 'Ngemplak', '28-01-1982', 'Islam', 963011, 'User', '045787998', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `kata_sandi` varchar(32) NOT NULL DEFAULT 'masuk',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33014 ;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `kata_sandi`) VALUES
(33001, 'masuk'),
(33002, 'masuk'),
(33003, 'masuk'),
(33004, 'masuk'),
(33005, 'masuk'),
(33006, 'masuk'),
(33007, 'masuk'),
(33008, 'masuk'),
(33009, 'masuk'),
(33010, 'masuk'),
(33011, 'masuk'),
(33012, 'masuk'),
(33013, 'masuk');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `fk_karyawan` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `fk_pengguna` FOREIGN KEY (`id_user`) REFERENCES `karyawan` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
