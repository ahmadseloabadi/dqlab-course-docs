SELECT kode_produk, nama_produk, SUM(jumlah*harga) as total
FROM dqlab_retail
GROUP BY kode_produk,nama_produk;

-- Tugas
-- "Tolong bantu aku untuk menampilkan data kodeproduk, namaproduk, total (group per kodeproduk)."

