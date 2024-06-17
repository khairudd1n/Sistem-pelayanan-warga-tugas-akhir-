-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 11:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-rt_ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_keluarga`
--

CREATE TABLE `anggota_keluarga` (
  `anggota_keluarga_id` int(255) NOT NULL,
  `no_nik` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_anggota_keluarga` varchar(255) NOT NULL,
  `status_hubungan` varchar(255) NOT NULL,
  `no_rumah` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_keluarga`
--

INSERT INTO `anggota_keluarga` (`anggota_keluarga_id`, `no_nik`, `nama`, `nama_anggota_keluarga`, `status_hubungan`, `no_rumah`, `no_telepon`, `jenis_kelamin`, `no_kk`, `agama`, `pekerjaan`, `tempat_lahir`, `tanggal_lahir`) VALUES
(51, 272676, 'kei', 'henri', 'anak', 'f2/5', '09898298992', 'lelaki', '28282788', 'islam', 'mahasiswa', 'jakarta', '21/08/1978'),
(52, 272676, 'udin', 'mike', 'anak', 'f5/2', '09898298992', 'lelaki', '28282788', 'tidak ada', 'mahasiswa', 'jakarta', '21/08/1978'),
(53, 272676, 'kei', 'fatimah', 'istri', 'f2/5', '09898298992', 'perempuan', '28282788', 'islam', 'suri rumah tangga', 'jakarta', '21/08/1970');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `keuangan_id` int(11) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `bukti` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`keuangan_id`, `tanggal`, `deskripsi`, `bukti`, `jenis`, `jumlah`) VALUES
(45, '2024-06-15', 'Iuran Bpk kei Januari 2024', '../uploads/bukti iuran (1) (1).jpg', 'pemasukan', '200'),
(46, '2024-06-15', 'Iuran Bpk kei Februari 2024', '../uploads/bukti iuran (1) (1).jpg', 'pemasukan', '200'),
(47, '2024-06-15', 'Iuran Bpk kei Maret 2024', '../uploads/bukti iuran (1) (1).jpg', 'pemasukan', '200'),
(48, '2024-06-15', 'Iuran Bpk kei April 2024', '../uploads/bukti iuran (1) (1).jpg', 'pemasukan', '200'),
(49, '2024-06-16', 'Iuran Bpk kei Januari 2025', '../uploads/bukti iuran (1).jpg', 'pemasukan', '200'),
(50, '2024-06-16', 'Iuran Bpk kei Mei 2024', '../uploads/bukti iuran (1).jpg', 'pemasukan', '200');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_iuran`
--

CREATE TABLE `pembayaran_iuran` (
  `pembayaran_iuran_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `nama_kk` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `bayaran_wajib` varchar(255) NOT NULL,
  `bayaran_sukarela` varchar(255) DEFAULT NULL,
  `bukti_bayar` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `komentar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran_iuran`
--

INSERT INTO `pembayaran_iuran` (`pembayaran_iuran_id`, `user_id`, `nama_kk`, `tanggal`, `bulan`, `tahun`, `bayaran_wajib`, `bayaran_sukarela`, `bukti_bayar`, `status`, `komentar`) VALUES
(110, 3, 'kei', '2024-06-15', 'Januari', '2024', '200.000', '0', '../uploads/bukti iuran (1) (1).jpg', 'lunas', ''),
(111, 3, 'kei', '2024-06-15', 'Februari', '2024', '200.000', '0', '../uploads/bukti iuran (1) (1).jpg', 'lunas', ''),
(112, 3, 'kei', '2024-06-15', 'Maret', '2024', '200.000', '0', '../uploads/bukti iuran (1) (1).jpg', 'lunas', ''),
(113, 3, 'kei', '2024-06-15', 'April', '2024', '200.000', '0', '../uploads/bukti iuran (1) (1).jpg', 'lunas', ''),
(114, 3, 'kei', '2024-06-16', 'Januari', '2025', '200.000', '0', '../uploads/bukti iuran (1).jpg', 'lunas', ''),
(115, 3, 'kei', '2024-06-16', 'Mei', '2024', '200.000', '0', '../uploads/bukti iuran (1).jpg', 'lunas', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `pengaduan_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `nama_pelapor` varchar(255) NOT NULL,
  `no_rumah` varchar(255) NOT NULL,
  `no_telepon` int(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `kategori_masalah` varchar(255) NOT NULL,
  `deskripsi_masalah` varchar(255) NOT NULL,
  `bukti_aduan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`pengaduan_id`, `user_id`, `nama_pelapor`, `no_rumah`, `no_telepon`, `tanggal`, `kategori_masalah`, `deskripsi_masalah`, `bukti_aduan`, `status`) VALUES
(31, 3, 'kei', 'f2/5', 9288282, '2024-06-15', 'infrastruktur', 'tiang lampu mati depan rumah saya', '../uploads/tiang lampu.jpg', 'belum dicek');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(255) NOT NULL,
  `no_nik` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_rumah` varchar(255) NOT NULL,
  `no_telepon` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `no_kk` int(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `no_nik`, `nama`, `no_rumah`, `no_telepon`, `password`, `jenis_kelamin`, `no_kk`, `agama`, `pekerjaan`, `tempat_lahir`, `tanggal_lahir`, `role`) VALUES
(1, 837826726, 'sudarsana', 'f2/1', 72827282, '123', 'lelaki', 62727288, 'islam', 'pensiun', 'jakarta', '21/07/1978', 'ketua rt'),
(2, 68228278, 'fitriani', 'f3/4', 6272787, '456', 'perempuan', 7282782, 'islam', 'ibu rumah tangga', 'jakarta', '14/02/1987', 'bendahara'),
(3, 6372672, 'kei', 'f2/5', 9288282, 'tes', 'lelaki', 199283, 'islam', 'karyawan swasta', 'jakarta', '21/09/1989', 'kepala keluarga'),
(4, 72827828, 'udin', 'f5/2', 9282872, '123', 'lelaki', 7282782, 'islam', 'dirut pertamina', 'jakarta', '23/09/1986', 'kepala keluarga'),
(6, 6677, 'kazuma', 'f6/4', 2147483647, '123', 'lelaki', 28282788, 'kristen', 'karyawan ', 'jakarta', '21/08/1978', 'kepala keluarga'),
(9, 272676, 'bastian', '7/fr', 2147483647, '123', '', 0, '', '', '', '', 'kepala keluarga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  ADD PRIMARY KEY (`anggota_keluarga_id`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`keuangan_id`);

--
-- Indexes for table `pembayaran_iuran`
--
ALTER TABLE `pembayaran_iuran`
  ADD PRIMARY KEY (`pembayaran_iuran_id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`pengaduan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  MODIFY `anggota_keluarga_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `keuangan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pembayaran_iuran`
--
ALTER TABLE `pembayaran_iuran`
  MODIFY `pembayaran_iuran_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `pengaduan_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
