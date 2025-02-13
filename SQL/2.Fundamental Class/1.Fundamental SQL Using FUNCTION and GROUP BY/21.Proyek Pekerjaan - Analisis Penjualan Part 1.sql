-- 1. Total jumlah seluruh penjualan (total/revenue).
SELECT SUM(total) as total 
FROM tr_penjualan;
-- 2. Total quantity seluruh produk yang terjual.
SELECT sum(qty) as qty 
FROM tr_penjualan;
-- 3. Total quantity dan total revenue untuk setiap kode produk.
SELECT kode_produk, sum(qty) as qty, sum(total) as total 
FROM tr_penjualan
GROUP BY kode_produk;

-- Tugas
-- Aku pun membuka email proyek dari Senja sambil menyeruput boba milk tea favoritku.

-- Aksara, saya senang dengan perkembanganmu belakangan ini. Saya mau minta tolong agar kamu melakukan analisis penjualan di suatu store. Adapun laporan yang diminta sebagai berikut:

-- Total jumlah seluruh penjualan (total/revenue).
-- Total quantity seluruh produk yang terjual.
-- Total quantity dan total revenue untuk setiap kode produk.

-- Tabel: tr_penjualan