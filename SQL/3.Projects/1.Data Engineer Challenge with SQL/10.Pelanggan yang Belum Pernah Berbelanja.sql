SELECT DISTINCT ms_pelanggan.kode_pelanggan,ms_pelanggan.nama_pelanggan,ms_pelanggan.alamat
FROM ms_pelanggan
WHERE ms_pelanggan.kode_pelanggan NOT IN (SELECT kode_pelanggan FROM tr_penjualan)

-- Tugas
-- Tampilkan daftar pelanggan yang belum pernah melakukan transaksi.

-- Nama kolom yang harus ditampilkan: kode_pelanggan, nama_pelanggan, alamat.