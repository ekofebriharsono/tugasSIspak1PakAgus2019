-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 19 Des 2019 pada 12.26
-- Versi Server: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.2.15-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispaktugas1`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `search` (IN `p_toefl` INT, IN `p_ipk` INT, IN `p_pendapatan` INT)  NO SQL
select mahasiswa.nim, mahasiswa.nama  from mahasiswa 
INNER JOIN ipk 
ON mahasiswa.nim = ipk.nim 
INNER JOIN toefl 
ON mahasiswa.nim = toefl.nim 
INNER JOIN pendapatan_ortu 
ON mahasiswa.nim = pendapatan_ortu.nim$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ipk`
--

CREATE TABLE `ipk` (
  `nim` int(11) NOT NULL,
  `jelek` float NOT NULL,
  `cukup` float NOT NULL,
  `bagus` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ipk`
--

INSERT INTO `ipk` (`nim`, `jelek`, `cukup`, `bagus`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 1, 0),
(10, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `toefl` int(11) NOT NULL,
  `ipk` int(11) NOT NULL,
  `pendapatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `toefl`, `ipk`, `pendapatan`) VALUES
(1, 'A', 450, 4, 750),
(2, 'b', 480, 3, 1500),
(3, 'C', 360, 3, 1255),
(4, 'D', 270, 2, 1040),
(5, 'E', 420, 4, 950),
(6, 'F', 390, 4, 1600),
(7, 'G', 370, 3, 1250),
(8, 'H', 255, 3, 550),
(9, 'I', 325, 2, 735),
(10, 'J', 250, 1, 860);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan_ortu`
--

CREATE TABLE `pendapatan_ortu` (
  `nim` int(11) NOT NULL,
  `sedikit` float NOT NULL,
  `sedang` float NOT NULL,
  `banyak` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendapatan_ortu`
--

INSERT INTO `pendapatan_ortu` (`nim`, `sedikit`, `sedang`, `banyak`) VALUES
(1, 0.25, 0.5, 0),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 0.75),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 1, 0, 0),
(9, 0.325, 0.35, 0),
(10, 0, 0.4, 0.3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toefl`
--

CREATE TABLE `toefl` (
  `nim` int(11) NOT NULL,
  `rendah` float NOT NULL,
  `menengah` float NOT NULL,
  `tinggi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toefl`
--

INSERT INTO `toefl` (`nim`, `rendah`, `menengah`, `tinggi`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 0.6),
(4, 0.3, 0.4, 0),
(5, 0, 0, 1),
(6, 0, 0, 0.9),
(7, 0, 0, 0.7),
(8, 0.45, 0.1, 0),
(9, 0, 0.5, 0.25),
(10, 0.5, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
