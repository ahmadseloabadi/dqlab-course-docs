SELECT YEAR(tanggal) AS tahun, kode_produk, nama_produk,
SUM(jumlah) AS totaljumlah, harga, SUM(jumlah*harga) AS total
FROM dqlab_retail
GROUP BY YEAR(tanggal),kode_produk, nama_produk, harga;

-- Tugas
-- Bantu aku menampilkan data tahun, kodeproduk, namaproduk, totaljumlah, harga, total (group per tahun, kodeproduk)!

