SELECT DISTINCT tr_penjualan.kode_transaksi,tr_penjualan.kode_pelanggan,ms_pelanggan.nama_pelanggan,tr_penjualan.tanggal_transaksi,COUNT(tr_penjualan_detail.kode_transaksi) AS jumlah_detail
FROM ms_pelanggan
JOIN tr_penjualan
ON ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
JOIN tr_penjualan_detail
ON tr_penjualan.kode_transaksi = tr_penjualan_detail.kode_transaksi
GROUP BY tr_penjualan.kode_transaksi,tr_penjualan.kode_pelanggan,ms_pelanggan.nama_pelanggan,tr_penjualan.tanggal_transaksi
HAVING jumlah_detail > 1

-- Tugas
-- Tampilkan transaksi-transaksi yang memiliki jumlah item produk lebih dari 1 jenis produk. Dengan lain kalimat, tampilkan transaksi-transaksi yang memiliki jumlah baris data pada table tr_penjualan_detail lebih dari satu.

-- Nama kolom yang harus ditampilkan:  kode_transaksi, kode_pelanggan, nama_pelanggan, tanggal_transaksi, jumlah_detail