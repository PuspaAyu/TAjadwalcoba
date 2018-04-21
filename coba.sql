-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 Apr 2018 pada 15.58
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus`
--

CREATE TABLE `bus` (
  `id_bus` int(10) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `jam_operasional` varchar(10) NOT NULL,
  `id_pegawai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bus`
--

INSERT INTO `bus` (`id_bus`, `no_polisi`, `jam_operasional`, `id_pegawai`) VALUES
(1, '12345', '08', 0),
(2, '1234', '11:31:05', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int(10) NOT NULL,
  `jumlah_gaji` int(20) NOT NULL,
  `status_gaji` varchar(10) NOT NULL,
  `waktu_gaji` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `jumlah_gaji`, `status_gaji`, `waktu_gaji`) VALUES
(1, 150000, 'ya', '0000-00-00'),
(2, 1000000, 'tidak', '2018-03-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `getbus`
--

CREATE TABLE `getbus` (
  `id_getBus` int(11) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `jam_operasional` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `getbus`
--

INSERT INTO `getbus` (`id_getBus`, `no_polisi`, `jam_operasional`) VALUES
(1, '1234', '00:00:10.000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `getjadwal`
--

CREATE TABLE `getjadwal` (
  `id_getJadwal` int(11) NOT NULL,
  `id_getBus` int(20) NOT NULL,
  `id_getPegawai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `getjadwal`
--

INSERT INTO `getjadwal` (`id_getJadwal`, `id_getBus`, `id_getPegawai`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang`
--

CREATE TABLE `hutang` (
  `id_hutang` int(10) NOT NULL,
  `jumlah_hutang` int(20) NOT NULL,
  `status_hutang` varchar(10) NOT NULL,
  `alasan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hutang`
--

INSERT INTO `hutang` (`id_hutang`, `jumlah_hutang`, `status_hutang`, `alasan`) VALUES
(1, 300000, 'belum', 'belum ada uang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `id_izin` int(10) NOT NULL,
  `tgl_izin` date NOT NULL,
  `jenis_izin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `izin`
--

INSERT INTO `izin` (`id_izin`, `tgl_izin`, `jenis_izin`) VALUES
(1, '2018-03-10', 'sakit'),
(2, '0000-00-00', 'saki'),
(3, '0000-00-00', 'sakit'),
(4, '2018-03-28', 'sakit'),
(5, '2018-03-28', 'pulkam');

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
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_bus` int(20) NOT NULL,
  `id_pegawai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_bus`, `id_pegawai`) VALUES
(1, 1, 1);

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

--
-- Dumping data untuk tabel `jadwal_bus`
--

INSERT INTO `jadwal_bus` (`id_jadwal`, `tanggal`, `jam_berangkat`, `id_bus`, `id_pegawai`, `jam_datang`, `id_izin`, `id_jurusan`) VALUES
(1, '2018-04-04', '05:00:00.000000', 1, 1, '10:00:00.000000', 1, 1);

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
  `karcis_pergi` int(20) NOT NULL,
  `karcis_pulang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karcis`
--

INSERT INTO `karcis` (`id_karcis`, `karcis_pergi`, `karcis_pulang`) VALUES
(1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komplain`
--

CREATE TABLE `komplain` (
  `id_komplain` int(10) NOT NULL,
  `isi_komplain` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komplain`
--

INSERT INTO `komplain` (`id_komplain`, `isi_komplain`) VALUES
(1, 'ngebut');

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
('m000000_000000_base', 1521819165),
('m130524_201442_init', 1521819168);

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
  `jabatan` varchar(10) NOT NULL,
  `riwayat_pendidikan` varchar(20) NOT NULL,
  `riwayat_pekerjaan` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `ktp_habis` date NOT NULL,
  `sim_habis` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `no_induk`, `alamat`, `no_tlp`, `jabatan`, `riwayat_pendidikan`, `riwayat_pekerjaan`, `tgl_masuk`, `jenis_kelamin`, `status`, `agama`, `kota`, `ktp_habis`, `sim_habis`) VALUES
(1, 'puspa', 2103151007, 'mojokerto', 2147483647, 'mahasiswa', 'sma', 'sma', '0000-00-00', 'perempuan', 'mahasiswa', 'islam', 'mjkert', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setoran`
--

CREATE TABLE `setoran` (
  `id_setoran` int(10) NOT NULL,
  `pendapatan_kotor` int(20) NOT NULL,
  `pendapatan_bersih` int(20) NOT NULL,
  `pinjaman` int(20) NOT NULL,
  `solar` int(20) NOT NULL,
  `ongkos` int(20) NOT NULL,
  `tgl_setor` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setoran`
--

INSERT INTO `setoran` (`id_setoran`, `pendapatan_kotor`, `pendapatan_bersih`, `pinjaman`, `solar`, `ongkos`, `tgl_setor`) VALUES
(1, 500000, 400000, 50000, 20000, 30000, '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(10) NOT NULL,
  `tipe_karcis` varchar(10) NOT NULL,
  `stok_jmlh_karcis` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id_stok`, `tipe_karcis`, `stok_jmlh_karcis`) VALUES
(1, 'A', 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tilangan`
--

CREATE TABLE `tilangan` (
  `id_tilangan` int(10) NOT NULL,
  `tanggal_tilangan` date NOT NULL,
  `denda` varchar(20) NOT NULL,
  `jenis_pelanggaran` varchar(20) NOT NULL,
  `tempat_kejadian` varchar(20) NOT NULL,
  `tanggal_batas_tilang` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tilangan`
--

INSERT INTO `tilangan` (`id_tilangan`, `tanggal_tilangan`, `denda`, `jenis_pelanggaran`, `tempat_kejadian`, `tanggal_batas_tilang`, `status`) VALUES
(1, '0000-00-00', '100000', 'melanggar', 'surabaya', '0000-00-00', 'belum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `level` int(1) NOT NULL DEFAULT '1' COMMENT '1=kabag,2=keuangan,3=karcis'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `level`) VALUES
(1, 'kabag', '-uFNjI6T-MxwGmVkgcAEKfjZV0rNId5W', '$2y$13$PVxv8VNkWzBNMeWj4x43suFo5O5rk/4VvgboTCmvvU8jQuDapD.SC', NULL, 'kabag@gmail.com', 10, 1522863540, 1522863540, 1);

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
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `getbus`
--
ALTER TABLE `getbus`
  ADD PRIMARY KEY (`id_getBus`);

--
-- Indexes for table `getjadwal`
--
ALTER TABLE `getjadwal`
  ADD PRIMARY KEY (`id_getJadwal`),
  ADD KEY `id_getBus` (`id_getBus`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`id_hutang`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id_izin`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `karcis`
--
ALTER TABLE `karcis`
  ADD PRIMARY KEY (`id_karcis`);

--
-- Indexes for table `komplain`
--
ALTER TABLE `komplain`
  ADD PRIMARY KEY (`id_komplain`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `setoran`
--
ALTER TABLE `setoran`
  ADD PRIMARY KEY (`id_setoran`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tilangan`
--
ALTER TABLE `tilangan`
  ADD PRIMARY KEY (`id_tilangan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id_bus` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `getbus`
--
ALTER TABLE `getbus`
  MODIFY `id_getBus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `getjadwal`
--
ALTER TABLE `getjadwal`
  MODIFY `id_getJadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `id_hutang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `getjadwal`
--
ALTER TABLE `getjadwal`
  ADD CONSTRAINT `getjadwal_ibfk_1` FOREIGN KEY (`id_getBus`) REFERENCES `getbus` (`id_getBus`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
