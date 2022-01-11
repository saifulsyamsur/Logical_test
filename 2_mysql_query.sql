-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.5-10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for universitas
CREATE DATABASE IF NOT EXISTS `universitas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `universitas`;


-- Dumping structure for table universitas.tb_mahasiswa
CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `mhs_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_nim` int(8) NOT NULL,
  `mhs_nama` varchar(255) NOT NULL,
  `mhs_angkatan` year(4) NOT NULL,
  PRIMARY KEY (`mhs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table universitas.tb_mahasiswa: ~5 rows (approximately)
DELETE FROM `tb_mahasiswa`;
/*!40000 ALTER TABLE `tb_mahasiswa` DISABLE KEYS */;
INSERT INTO `tb_mahasiswa` (`mhs_id`, `mhs_nim`, `mhs_nama`, `mhs_angkatan`) VALUES
	(1, 20180001, 'Jono', '2018'),
	(2, 20180002, 'Taufik', '2018'),
	(3, 20180002, 'Maria', '2018'),
	(4, 20190001, 'Sari', '2019'),
	(5, 20190002, 'Bambang', '2019');
/*!40000 ALTER TABLE `tb_mahasiswa` ENABLE KEYS */;


-- Dumping structure for table universitas.tb_mahasiswa_nilai
CREATE TABLE IF NOT EXISTS `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_id` int(11) NOT NULL,
  `mk_id` int(11) NOT NULL,
  `nilai` decimal(10,0) NOT NULL,
  PRIMARY KEY (`mhs_nilai_id`),
  KEY `mhs_id` (`mhs_id`),
  KEY `mk_id` (`mk_id`),
  CONSTRAINT `mhs_id` FOREIGN KEY (`mhs_id`) REFERENCES `tb_mahasiswa` (`mhs_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mk_id` FOREIGN KEY (`mk_id`) REFERENCES `tb_matakuliah` (`mk_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table universitas.tb_mahasiswa_nilai: ~3 rows (approximately)
DELETE FROM `tb_mahasiswa_nilai`;
/*!40000 ALTER TABLE `tb_mahasiswa_nilai` DISABLE KEYS */;
INSERT INTO `tb_mahasiswa_nilai` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
	(1, 1, 1, 70),
	(2, 1, 1, 80),
	(3, 2, 1, 82),
	(4, 2, 2, 74),
	(5, 4, 1, 76),
	(6, 4, 2, 80),
	(7, 5, 1, 60);
/*!40000 ALTER TABLE `tb_mahasiswa_nilai` ENABLE KEYS */;


-- Dumping structure for table universitas.tb_matakuliah
CREATE TABLE IF NOT EXISTS `tb_matakuliah` (
  `mk_id` int(11) NOT NULL AUTO_INCREMENT,
  `mk_kode` varchar(50) NOT NULL,
  `mk_sks` int(11) NOT NULL,
  `mk_nama` varchar(50) NOT NULL,
  PRIMARY KEY (`mk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table universitas.tb_matakuliah: ~2 rows (approximately)
DELETE FROM `tb_matakuliah`;
/*!40000 ALTER TABLE `tb_matakuliah` DISABLE KEYS */;
INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`) VALUES
	(1, 'MK202', 3, 'OOP'),
	(2, 'MK303', 2, 'Basis Data');
/*!40000 ALTER TABLE `tb_matakuliah` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
