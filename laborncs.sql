-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2025 pada 17.40
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laborncs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asistenpraktikum`
--

CREATE TABLE `asistenpraktikum` (
  `id_asprak` int(11) NOT NULL,
  `nama_asprak` varchar(100) DEFAULT NULL,
  `npm_asprak` bigint(20) DEFAULT NULL,
  `email_asprak` varchar(100) DEFAULT NULL,
  `kontak_asprak` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `asistenpraktikum`
--

INSERT INTO `asistenpraktikum` (`id_asprak`, `nama_asprak`, `npm_asprak`, `email_asprak`, `kontak_asprak`) VALUES
(1, 'Apriani Simamora', 4522210150, 'kakapri121@gmail.com', 82272139443),
(2, 'Fairuz Salma Zahfirah', 4521210037, 'fairuzsalma34@gmail.com', 83427112578),
(3, 'Adam Fabio Kaze', 4522210094, 'kazeadam37@gmail.com', 81283627755),
(4, 'Kevin Raihan Hidayat', 4521210025, 'kevinraihan77@gmail.com', 85889461610),
(5, 'Muhammad Azhar Rabbani', 4522210098, 'azharrabbani356@gmail.com', 81293140270),
(6, 'Muhammad Hakim', 4522210092, 'hakimceyda85@gmail.com', 82153024003),
(7, 'Imam Zuhdi Muzakky', 4521210010, 'zuhdimuzakkiy28@gmail.com', 881011517507),
(8, 'Kelvin Antonius', 4521210018, 'antoniuskelfin94@gmail.com', 81381130682),
(9, 'Dhandi Adam', 4522210147, 'dhandiadam64@gmail.com', 81319240256),
(10, 'Siti Ghumaisa', 4522210131, 'ghumaisasiti93@gmail.com', 87882546724),
(11, 'Shultan Rafi', 4521210065, 'rafisulthan437@gmail.com', 85157986833),
(12, 'Antonius Valentino Kusuma', 4522210109, 'valentinodharma73@gmail.com', 87887713678),
(13, 'Panca Adhiputra', 4521210040, 'purnamapanca36@gmail.com', 89698338654),
(14, 'Ardian Dwi Herlambang', 4521210029, 'ardianherlambang43@gmail.com', 85144852538),
(15, 'Afrialdy Syahputra', 4521210041, 'afrialdysyaputra27@gmail.com', 85136784467),
(16, 'Afiyah Nabila Putri', 4522120096, 'nabilaputri89@gmail.com', 81315340712),
(17, 'Alysha Cagivani Yasmin', 4523210011, 'alyshiayasmin45@gmail.com', 81212186462),
(18, 'Rodiah Alaydrus', 4523210098, 'rodiahalaydrus34@gmail.com', 87887017444),
(19, 'Zahra Tsabita', 4523210145, 'zahratsabitah96@gmail.com', 89621239559),
(20, 'Irmawati Pakpahan', 4523210037, 'irma98@gmail.com', 87897972517);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalkuliah`
--

CREATE TABLE `jadwalkuliah` (
  `id_jadwal` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_asprak` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `id_labor` int(11) NOT NULL,
  `hari_pemakaian` varchar(100) NOT NULL,
  `tanggal_pemakaian` date DEFAULT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwalkuliah`
--

INSERT INTO `jadwalkuliah` (`id_jadwal`, `id_mhs`, `id_asprak`, `id_matkul`, `id_labor`, `hari_pemakaian`, `tanggal_pemakaian`, `jam_mulai`, `jam_selesai`) VALUES
(1, 1, 1, 113, 106, 'Senin', '2024-02-12', '08:00:00', '10:00:00'),
(2, 2, 7, 105, 108, 'Selasa', '2024-02-13', '10:00:00', '12:00:00'),
(3, 3, 20, 120, 104, 'Rabu', '2024-02-14', '13:00:00', '15:00:00'),
(4, 4, 13, 107, 107, 'Kamis', '2024-02-15', '08:00:00', '11:00:00'),
(5, 5, 19, 103, 119, 'Jumat', '2024-02-16', '14:00:00', '16:00:00'),
(6, 6, 5, 111, 103, 'Sabtu', '2024-02-17', '08:00:00', '10:00:00'),
(7, 7, 9, 108, 116, 'Senin', '2024-02-19', '10:00:00', '12:00:00'),
(8, 8, 2, 102, 105, 'Selasa', '2024-02-20', '13:00:00', '15:00:00'),
(9, 9, 18, 114, 108, 'Rabu', '2024-02-21', '09:00:00', '11:00:00'),
(10, 10, 6, 109, 115, 'Kamis', '2024-02-22', '14:00:00', '16:00:00'),
(11, 11, 11, 101, 112, 'Jumat', '2024-02-23', '08:00:00', '10:00:00'),
(12, 12, 15, 115, 102, 'Sabtu', '2024-02-24', '10:00:00', '12:00:00'),
(13, 13, 10, 119, 110, 'Senin', '2024-02-26', '13:00:00', '15:00:00'),
(14, 14, 3, 116, 120, 'Selasa', '2024-02-27', '09:00:00', '11:00:00'),
(15, 15, 17, 106, 114, 'Rabu', '2024-02-28', '14:00:00', '16:00:00'),
(16, 16, 12, 104, 118, 'Kamis', '2024-03-01', '08:00:00', '10:00:00'),
(17, 17, 14, 110, 117, 'Jumat', '2024-03-02', '10:00:00', '12:00:00'),
(18, 18, 4, 118, 120, 'Sabtu', '2024-03-03', '13:00:00', '15:00:00'),
(19, 19, 16, 112, 102, 'Senin', '2024-03-04', '09:00:00', '11:00:00'),
(20, 20, 8, 117, 115, 'Selasa', '2024-03-05', '14:00:00', '16:00:00'),
(21, 3, 1, 105, 109, 'Rabu', '2024-03-06', '09:00:00', '12:00:00'),
(22, 19, 3, 102, 105, 'Kamis', '2024-03-07', '00:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(100) DEFAULT NULL,
  `npm_mhs` bigint(20) DEFAULT NULL,
  `Semester` int(11) DEFAULT NULL,
  `angkatan_mhs` int(11) DEFAULT NULL,
  `kontak_mhs` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nama_mhs`, `npm_mhs`, `Semester`, `angkatan_mhs`, `kontak_mhs`) VALUES
(1, 'M Akbar Ramadhan', 4523210132, 3, 2023, 83196390884),
(2, 'Sandrina Novitasari', 4523210101, 3, 2023, 85174271126),
(3, 'Fahran Maulana', 4523210044, 3, 2023, 81282047377),
(4, 'Firdaus Fatan', 4523210049, 3, 2023, 81380040356),
(5, 'Handra Putra Alma', 4523210053, 3, 2023, 85155032911),
(6, 'Ramzy Syah Khalifah', 4523210089, 3, 2023, 81806694772),
(7, 'Hilya Najwa', 4523210112, 3, 2023, 82283209672),
(8, 'Muhammad Abiyu Muflih', 4523210124, 3, 2023, 85767241273),
(9, 'Alifia Wenny', 4523210126, 3, 2023, 881024144328),
(10, 'Hany Nadya', 4523210128, 3, 2023, 81386382210),
(11, 'Evelyn Ade Oktalia', 4524210031, 1, 2024, 85244910026),
(12, 'Kornelius Timoty', 4524210050, 1, 2024, 83100196722),
(13, 'Ririn Verdawati', 4524210090, 1, 2024, 81266610281),
(14, 'Syalva Kirania', 4524210101, 1, 2024, 85200129910),
(15, 'Reno Budiman', 4524210124, 1, 2024, 8821567721),
(16, 'Moreno Renaldy', 4519210115, 11, 2019, 81164555801),
(17, 'Hyza Proteus', 4520210101, 9, 2020, 8520661910),
(18, 'Ken Farabi', 4521210002, 7, 2021, 82210899251),
(19, 'Vina Aisyah', 4522210066, 5, 2022, 81106743821),
(20, 'Aulia Zahra Sabila', 4522210132, 5, 2022, 81314585984);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(100) DEFAULT NULL,
  `sks_matkul` int(11) DEFAULT NULL,
  `dosen_matkul` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_matkul`, `nama_matkul`, `sks_matkul`, `dosen_matkul`) VALUES
(101, 'Algoritma Pemrograman', 3, 'Dra. Sri Rezeki Candra M.Kom'),
(102, 'Algoritma Struktur Data', 3, 'Dra. Sri Rezeki Candra M.Kom'),
(103, 'Basis Data', 3, 'Dr.Ir.Iman Paryudi M.sc'),
(104, 'Desain Web', 2, 'Adi Wahyu Pribadi M.Kom'),
(105, 'Pemrograman Berbasis Objek', 3, 'Bambang Riono S.Kom, M.M.SI'),
(106, 'Komunikasi Data', 2, 'Dr. Ainil Syafitri S.T M.T'),
(107, 'Intelligent System', 3, 'Ninuk Williani S.Si,M.Kom'),
(108, 'Pemrograman Paralel', 2, 'Amir Murtako S.Kom M.Kom'),
(109, 'Jaringan Komputer', 3, 'Adi Wahyu Pribadi M.Kom'),
(110, 'Pemrograman Berbasis Web', 3, 'Bambang Riono S.Kom M.M.SI'),
(111, 'Keamanan Teknologi Informasi', 2, 'Sattar Irawan S.Kom, M.T.I'),
(112, 'Computer Vision', 3, 'Amir Murtako S.Kom M.Kom'),
(113, 'Metodologi Penelitian', 3, 'Dr.Ir.Iman Paryudi M.sc'),
(114, 'Sistem Pendukung Keputusan', 2, 'Ninuk Williani S.Si,M.Kom'),
(115, 'Multimedia', 3, 'Bambang Riono S.Kom M.M.SI'),
(116, 'Sistem Kecerdasan Bisnis', 3, 'Dr.Ir.Iman Paryudi M.sc'),
(117, 'Pemrograman Berbasis Mobile', 3, 'Adi Wahyu Pribadi M.Kom'),
(118, 'Komputer Grafik', 3, 'Amir Murtako S.Kom M.Kom'),
(119, 'Desain Analisis Algoritma', 3, 'Dr. Ionia Veritawati S.Si, M.T'),
(120, 'Secure Programming', 3, 'Gregorius Hendita S.Si, M.Cs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruanglabor`
--

CREATE TABLE `ruanglabor` (
  `id_labor` int(11) NOT NULL,
  `nomer_monitor` int(11) DEFAULT NULL,
  `status_monitor` enum('Tersedia','Tidak Tersedia') DEFAULT 'Tersedia',
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruanglabor`
--

INSERT INTO `ruanglabor` (`id_labor`, `nomer_monitor`, `status_monitor`, `keterangan`) VALUES
(101, 1, 'Tidak Tersedia', 'Digunakan Asprak'),
(102, 2, 'Tidak Tersedia', 'Digunakan Asprak'),
(103, 3, 'Tersedia', 'Hanya Tersedia Visual Studio Code'),
(104, 4, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(105, 5, 'Tersedia', 'Belum Terinstal JDK Java'),
(106, 6, 'Tersedia', 'Tersedia Semua Aplikasi'),
(107, 7, 'Tersedia', 'Tersedia Semua Aplikasi'),
(108, 8, 'Tersedia', 'Tersedia Semua Aplikasi'),
(109, 9, 'Tersedia', 'Hanya Tersedia Visual Studio Code'),
(110, 10, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(111, 11, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(112, 12, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(113, 13, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(114, 14, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(115, 15, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(116, 16, 'Tersedia', 'Belum Terinstal JDK Java'),
(117, 17, 'Tersedia', 'Belum Terinstal JDK Java'),
(118, 18, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(119, 19, 'Tidak Tersedia', 'Digunakan Mahasiswa'),
(120, 20, 'Tidak Tersedia', 'Digunakan Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asistenpraktikum`
--
ALTER TABLE `asistenpraktikum`
  ADD PRIMARY KEY (`id_asprak`);

--
-- Indeks untuk tabel `jadwalkuliah`
--
ALTER TABLE `jadwalkuliah`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_mhs` (`id_mhs`),
  ADD KEY `id_asprak` (`id_asprak`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_labor` (`id_labor`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indeks untuk tabel `ruanglabor`
--
ALTER TABLE `ruanglabor`
  ADD PRIMARY KEY (`id_labor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `asistenpraktikum`
--
ALTER TABLE `asistenpraktikum`
  MODIFY `id_asprak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `jadwalkuliah`
--
ALTER TABLE `jadwalkuliah`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT untuk tabel `ruanglabor`
--
ALTER TABLE `ruanglabor`
  MODIFY `id_labor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwalkuliah`
--
ALTER TABLE `jadwalkuliah`
  ADD CONSTRAINT `jadwalkuliah_ibfk_1` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`id_mhs`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwalkuliah_ibfk_2` FOREIGN KEY (`id_asprak`) REFERENCES `asistenpraktikum` (`id_asprak`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwalkuliah_ibfk_3` FOREIGN KEY (`id_matkul`) REFERENCES `matakuliah` (`id_matkul`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwalkuliah_ibfk_4` FOREIGN KEY (`id_labor`) REFERENCES `ruanglabor` (`id_labor`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
