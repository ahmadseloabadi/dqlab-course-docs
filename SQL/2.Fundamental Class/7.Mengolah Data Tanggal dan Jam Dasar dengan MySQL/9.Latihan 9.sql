SELECT tanggal, kode_produk, nama_produk, 
SUM(jumlah) AS totaljumlah, harga, SUM(jumlah*harga) AS total
FROM dqlab_retail
GROUP BY tanggal, kode_produk, nama_produk, harga;

-- Tugas
-- "Sekarang bantu aku tampilkan data tanggal, kodeproduk, namaproduk, totaljumlah, harga, total (group per tanggal, kode_produk, nama_produk, harga)!"
