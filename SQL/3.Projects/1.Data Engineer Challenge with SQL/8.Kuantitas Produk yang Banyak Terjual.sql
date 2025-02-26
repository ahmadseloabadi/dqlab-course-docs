SELECT ms_produk.kode_produk,ms_produk.nama_produk,SUM(tr_penjualan_detail.qty) AS total_qty 
FROM ms_produk
JOIN tr_penjualan_detail
ON ms_produk.kode_produk = tr_penjualan_detail.kode_produk
GROUP BY ms_produk.kode_produk,ms_produk.nama_produk
HAVING total_qty = 7;

-- Tugas
-- Tampilkan produk yang paling banyak terjual dari segi kuantitas. Jika ada lebih dari 1 produk dengan nilai yang sama, tampilkan semua produk tersebut.

-- Nama kolom yang harus ditampilkan: kode_produk, nama_produk,total_qty.