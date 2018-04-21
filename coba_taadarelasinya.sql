-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 Mar 2018 pada 04.37
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus`
--

CREATE TABLE `bus` (
  `id_bus` int(10) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `jam_operasional` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int(10) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `jumlah_gaji` int(20) NOT NULL,
  `id_hutang` int(10) NOT NULL,
  `status_gaji` varchar(10) NOT NULL,
  `waktu_gaji` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang`
--

CREATE TABLE `hutang` (
  `id_hutang` int(10) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `jumlah_hutang` int(20) NOT NULL,
  `status_hutang` varchar(10) NOT NULL,
  `alasan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `id_izin` int(10) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `tgl_izin` date NOT NULL,
  `jenis_izin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `jenis_jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_bus`
--

CREATE TABLE `jadwal_bus` (
  `id_jadwal` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_berangkat` time(6) NOT NULL,
  `id_bus` int(10) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `jam_datang` time(6) NOT NULL,
  `id_izin` int(10) NOT NULL,
  `id_jurusan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(10) NOT NULL,
  `jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karcis`
--

CREATE TABLE `karcis` (
  `id_karcis` int(10) NOT NULL,
  `id_bus` int(10) NOT NULL,
  `id_stok` int(10) NOT NULL,
  `karcis_pergi` int(20) NOT NULL,
  `karcis_pulang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komplain`
--

CREATE TABLE `komplain` (
  `id_komplain` int(10) NOT NULL,
  `id_jadwal_bus` int(10) NOT NULL,
  `isi_komplain` varchar(20) NOT NULL,
  `id_pegawai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1520411079);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_induk` int(10) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `no_tlp` int(15) NOT NULL,
  `jabatan` int(10) NOT NULL,
  `riwayat_pendidikan` varchar(20) NOT NULL,
  `riwayat_pekerjaan` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kota` varchar(10) NOT NULL,
  `ktp_habis` date NOT NULL,
  `sim_habis` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setoran`
--

CREATE TABLE `setoran` (
  `id_setoran` int(10) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `pendapatan_kotor` int(20) NOT NULL,
  `pendapatan_bersih` int(20) NOT NULL,
  `pinjaman` int(20) NOT NULL,
  `id_bus` int(10) NOT NULL,
  `solar` int(20) NOT NULL,
  `ongkos` int(20) NOT NULL,
  `tgl_setor` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(10) NOT NULL,
  `tipe_karcis` varchar(10) NOT NULL,
  `stok_jmlh_karcis` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tilangan`
--

CREATE TABLE `tilangan` (
  `id_tilangan` int(10) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `tanggal_tilangan` date NOT NULL,
  `denda` varchar(20) NOT NULL,
  `jenis_pelanggaran` varchar(20) NOT NULL,
  `tempat_kejadian` varchar(20) NOT NULL,
  `tanggal_batas_tilang` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`),
  ADD KEY `id_hutang` (`id_hutang`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `jumlah_gaji` (`jumlah_gaji`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`id_hutang`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `jumlah_hutang` (`jumlah_hutang`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id_izin`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_izin` (`id_izin`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `karcis`
--
ALTER TABLE `karcis`
  ADD PRIMARY KEY (`id_karcis`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_stok` (`id_stok`),
  ADD KEY `jumlah_karcis` (`karcis_pergi`),
  ADD KEY `karcis_pulang` (`karcis_pulang`);

--
-- Indexes for table `komplain`
--
ALTER TABLE `komplain`
  ADD PRIMARY KEY (`id_komplain`),
  ADD KEY `id_jadwal_bus` (`id_jadwal_bus`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `jabatan` (`jabatan`);

--
-- Indexes for table `setoran`
--
ALTER TABLE `setoran`
  ADD PRIMARY KEY (`id_setoran`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_pegawai_2` (`id_pegawai`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tilangan`
--
ALTER TABLE `tilangan`
  ADD PRIMARY KEY (`id_tilangan`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id_bus` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `id_hutang` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id_izin` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `karcis`
--
ALTER TABLE `karcis`
  MODIFY `id_karcis` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `komplain`
--
ALTER TABLE `komplain`
  MODIFY `id_komplain` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setoran`
--
ALTER TABLE `setoran`
  MODIFY `id_setoran` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tilangan`
--
ALTER TABLE `tilangan`
  MODIFY `id_tilangan` int(10) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `setoran` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bus_ibfk_2` FOREIGN KEY (`id_bus`) REFERENCES `karcis` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bus_ibfk_3` FOREIGN KEY (`id_bus`) REFERENCES `jadwal_bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `gaji_ibfk_1` FOREIGN KEY (`jumlah_gaji`) REFERENCES `profil` (`id_gaji`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hutang`
--
ALTER TABLE `hutang`
  ADD CONSTRAINT `hutang_ibfk_1` FOREIGN KEY (`id_hutang`) REFERENCES `gaji` (`id_hutang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hutang_ibfk_2` FOREIGN KEY (`id_hutang`) REFERENCES `gaji` (`id_hutang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hutang_ibfk_3` FOREIGN KEY (`id_hutang`) REFERENCES `profil` (`id_hutang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `izin`
--
ALTER TABLE `izin`
  ADD CONSTRAINT `izin_ibfk_1` FOREIGN KEY (`id_izin`) REFERENCES `jadwal_bus` (`id_izin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD CONSTRAINT `jabatan_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `pegawai` (`jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  ADD CONSTRAINT `jadwal_bus_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `komplain` (`id_jadwal_bus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jadwal_bus` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `setoran` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `gaji` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`id_pegawai`) REFERENCES `profil` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_4` FOREIGN KEY (`id_pegawai`) REFERENCES `tilangan` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_5` FOREIGN KEY (`id_pegawai`) REFERENCES `jadwal_bus` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_6` FOREIGN KEY (`id_pegawai`) REFERENCES `hutang` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_7` FOREIGN KEY (`id_pegawai`) REFERENCES `izin` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_8` FOREIGN KEY (`id_pegawai`) REFERENCES `komplain` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_stok`) REFERENCES `karcis` (`id_stok`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
