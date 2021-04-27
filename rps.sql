-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 02:19 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rps`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`) VALUES
('197606272008011008', 'Firdaus Solihin, S.Kom., M.Kom'),
('197707132002121004', 'Moh. Kautsar Sophan, S.Kom., M.MT'),
('197809262006041001', 'Wahyudi Setiawan, S.Kom'),
('198404132008121002', 'Yoga Dwitya Pramudita, S.Kom');

-- --------------------------------------------------------

--
-- Table structure for table `info_mk`
--

CREATE TABLE `info_mk` (
  `kode_mk` char(6) NOT NULL,
  `id_koordinator` int(4) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `semester` varchar(7) NOT NULL,
  `sks` int(1) NOT NULL,
  `prasyarat` char(6) DEFAULT NULL,
  `prodi` varchar(3) NOT NULL,
  `deskripsi` varchar(200) DEFAULT NULL,
  `kajian_mk` varchar(200) DEFAULT NULL,
  `c_pembelajaran` varchar(300) NOT NULL,
  `r_buku_teks` varchar(150) DEFAULT NULL,
  `r_buku_pendukung` varchar(150) DEFAULT NULL,
  `r_paper` varchar(150) DEFAULT NULL,
  `b_kehadiran` varchar(5) NOT NULL,
  `b_tugas` varchar(5) NOT NULL,
  `b_uts` varchar(5) NOT NULL,
  `b_uas` varchar(5) NOT NULL,
  `b_nilai_minimal` varchar(3) NOT NULL,
  `penpel` varchar(300) DEFAULT NULL,
  `penilaian` varchar(100) DEFAULT NULL,
  `s_plagiasi` varchar(100) DEFAULT NULL,
  `s_suap` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_mk`
--

INSERT INTO `info_mk` (`kode_mk`, `id_koordinator`, `nama_mk`, `semester`, `sks`, `prasyarat`, `prodi`, `deskripsi`, `kajian_mk`, `c_pembelajaran`, `r_buku_teks`, `r_buku_pendukung`, `r_paper`, `b_kehadiran`, `b_tugas`, `b_uts`, `b_uas`, `b_nilai_minimal`, `penpel`, `penilaian`, `s_plagiasi`, `s_suap`) VALUES
('SI101', 19, 'Algoritma Pemrograman', '1', 4, '', 'SI', '', 'Alpro', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('TIK101', 16, 'Matematika I', '1', 3, '', 'TIF', 'Tesi', 'Tesa', 'jnknknm', 'Matematika diskrit I', 'Matematika 1', '', '80%', '20%', '40%', '40%', '75', 'Tesa', 'Kesopanan', 'Drop Out', 'Drop Oout'),
('TIK102', 18, 'Algoritma Pemrograman', '1', 4, '', 'TIF', 'Alpro', 'Alpro', 'Mahasiswa dapat memahami tentang proses algoritma', '', '', '', '70%', '30%', '30%', '40%', '70', 'Tes', 'Kehadiran', 'Skorsing 2 hari', 'Drop Out'),
('TIK103', 17, 'Logika Informatika', '1', 2, '', 'TIF', 'sad', 's', '', '', '', '', '80%', '20%', '40%', '40%', '75', 'mn', 'nk', 'Drop Out', 'Drop Out');

-- --------------------------------------------------------

--
-- Table structure for table `kaprodi`
--

CREATE TABLE `kaprodi` (
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaprodi`
--

INSERT INTO `kaprodi` (`nip`, `nama`, `pass`) VALUES
('198404132008121002', 'Yoga Dwitya Pramudita, S.Kom', 'b93939873fd4923043b9dec975811f66');

-- --------------------------------------------------------

--
-- Table structure for table `koordinator`
--

CREATE TABLE `koordinator` (
  `id_koordinator` int(4) NOT NULL,
  `nip` char(18) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `koordinator`
--

INSERT INTO `koordinator` (`id_koordinator`, `nip`, `pass`) VALUES
(16, '197707132002121004', 'b93939873fd4923043b9dec975811f66'),
(17, '197809262006041001', 'b93939873fd4923043b9dec975811f66'),
(18, '198404132008121002', 'b93939873fd4923043b9dec975811f66'),
(19, '197606272008011008', 'b93939873fd4923043b9dec975811f66');

-- --------------------------------------------------------

--
-- Table structure for table `pengampu`
--

CREATE TABLE `pengampu` (
  `id_pengajar` int(4) NOT NULL,
  `nip` char(18) NOT NULL,
  `kode_mk` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengampu`
--

INSERT INTO `pengampu` (`id_pengajar`, `nip`, `kode_mk`) VALUES
(10, '197606272008011008', 'TIK101'),
(12, '197606272008011008', 'TIK103'),
(9, '197707132002121004', 'TIK101'),
(13, '197707132002121004', 'TIK102'),
(24, '198404132008121002', 'SI101'),
(21, '198404132008121002', 'TIK101'),
(23, '198404132008121002', 'TIK102'),
(19, '198404132008121002', 'TIK103');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kode_prodi` varchar(3) NOT NULL,
  `nama_prodi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kode_prodi`, `nama_prodi`) VALUES
('SI', 'Sistem Informasi'),
('TIF', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `ringkasan_pembelajaran`
--

CREATE TABLE `ringkasan_pembelajaran` (
  `id_rpel` int(11) NOT NULL,
  `kode_mk` char(6) NOT NULL,
  `pertemuan` int(3) NOT NULL,
  `topik_bahasan` varchar(300) DEFAULT NULL,
  `bahan_bacaan` varchar(100) DEFAULT NULL,
  `lab` varchar(20) DEFAULT NULL,
  `tugas` varchar(40) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ringkasan_pembelajaran`
--

INSERT INTO `ringkasan_pembelajaran` (`id_rpel`, `kode_mk`, `pertemuan`, `topik_bahasan`, `bahan_bacaan`, `lab`, `tugas`, `keterangan`) VALUES
(2, 'TIK101', 2, 'hjf', 'bjh', 'bhjb', 'bj', 'bjff'),
(3, 'TIK102', 1, 'nmna', 'nkj', 'nkn', 'nk', 'nk'),
(4, 'TIK102', 2, 'ja', 'tes', 'tes', 'tes', 'tes'),
(5, 'TIK103', 1, 'tes', 'tes', 'tes', 'ets', 'tes'),
(6, 'TIK103', 2, 'sdr', 'we', 'we', 'we', 'we'),
(7, 'TIK103', 3, 'njk', 'nkj', 'njk', 'njk', 'nkjn'),
(12, 'TIK102', 3, 'bhjba', 'bhjbhj', 'bjbj', 'bhjbj', 'jhb'),
(16, 'TIK102', 4, 'nkjn', 'nkjn', 'nkn', 'nkjkj', 'kjnnkn'),
(17, 'TIK102', 5, 'jknk', 'jknkn', 'nknjkj', 'njkn', 'njkn'),
(35, 'TIK103', 4, 'nnjn', 'nkjnjkn', 'nknk', 'nkjk', 'jnk'),
(37, 'TIK101', 1, 'jj', 'hjbjhb', 'bjhbjhb', 'bjbjh', 'bjhbjb'),
(38, 'TIK101', 3, 'tes', 'tes', 'tes', 'tes', 'tes'),
(39, 'TIK101', 4, 'njkjn', 'ddd', 'nkn', '', ''),
(43, 'TIK101', 5, 'nkjk', 'nknj', 'nkn', 'kn', 'knkjk'),
(44, 'TIK101', 6, 'cjk', 'njkn', '', '', ''),
(46, 'TIK101', 7, '', '', '', '', ''),
(48, 'TIK101', 8, '', '', '', '', ''),
(50, 'TIK101', 9, '', '', '', '', ''),
(51, 'TIK101', 10, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `info_mk`
--
ALTER TABLE `info_mk`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `id_koordinator` (`id_koordinator`) USING BTREE,
  ADD KEY `prasyarat` (`prasyarat`),
  ADD KEY `prodi` (`prodi`);

--
-- Indexes for table `kaprodi`
--
ALTER TABLE `kaprodi`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `koordinator`
--
ALTER TABLE `koordinator`
  ADD PRIMARY KEY (`id_koordinator`),
  ADD UNIQUE KEY `nip_2` (`nip`),
  ADD KEY `nip` (`nip`) USING BTREE;

--
-- Indexes for table `pengampu`
--
ALTER TABLE `pengampu`
  ADD PRIMARY KEY (`id_pengajar`),
  ADD UNIQUE KEY `nip` (`nip`,`kode_mk`),
  ADD KEY `nip_2` (`nip`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kode_prodi`);

--
-- Indexes for table `ringkasan_pembelajaran`
--
ALTER TABLE `ringkasan_pembelajaran`
  ADD PRIMARY KEY (`id_rpel`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`,`pertemuan`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `koordinator`
--
ALTER TABLE `koordinator`
  MODIFY `id_koordinator` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pengampu`
--
ALTER TABLE `pengampu`
  MODIFY `id_pengajar` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ringkasan_pembelajaran`
--
ALTER TABLE `ringkasan_pembelajaran`
  MODIFY `id_rpel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `info_mk`
--
ALTER TABLE `info_mk`
  ADD CONSTRAINT `info_mk_ibfk_1` FOREIGN KEY (`id_koordinator`) REFERENCES `koordinator` (`id_koordinator`) ON UPDATE CASCADE,
  ADD CONSTRAINT `info_mk_ibfk_2` FOREIGN KEY (`prodi`) REFERENCES `prodi` (`kode_prodi`);

--
-- Constraints for table `koordinator`
--
ALTER TABLE `koordinator`
  ADD CONSTRAINT `koordinator_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON UPDATE CASCADE;

--
-- Constraints for table `pengampu`
--
ALTER TABLE `pengampu`
  ADD CONSTRAINT `pengampu_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pengampu_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `info_mk` (`kode_mk`) ON UPDATE CASCADE;

--
-- Constraints for table `ringkasan_pembelajaran`
--
ALTER TABLE `ringkasan_pembelajaran`
  ADD CONSTRAINT `ringkasan_pembelajaran_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `info_mk` (`kode_mk`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
