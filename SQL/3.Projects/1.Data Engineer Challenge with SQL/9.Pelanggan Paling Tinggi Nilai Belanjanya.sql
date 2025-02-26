SELECT DISTINCT ms_pelanggan.kode_pelanggan,ms_pelanggan.nama_pelanggan, SUM(tr_penjualan_detail.qty*tr_penjualan_detail.harga_satuan) AS total_harga
FROM ms_pelanggan
JOIN tr_penjualan
ON ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
JOIN tr_penjualan_detail
ON tr_penjualan.kode_transaksi = tr_penjualan_detail.kode_transaksi
GROUP BY ms_pelanggan.kode_pelanggan,ms_pelanggan.nama_pelanggan
ORDER BY total_harga DESC 
LIMIT 1

-- Tugas
-- Siapa saja pelanggan yang paling banyak menghabiskan uangnya untuk belanja? Jika ada lebih dari 1 pelanggan dengan nilai yang sama, tampilkan semua pelanggan tersebut.

-- Nama kolom yang harus ditampilkan: kode_pelanggan, nama_pelanggan, total_harga.