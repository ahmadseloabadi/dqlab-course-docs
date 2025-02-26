SELECT nama_pelanggan
FROM ms_pelanggan
WHERE LENGTH(nama_pelanggan) IN
(SELECT MAX(LENGTH(nama_pelanggan)) FROM ms_pelanggan)
OR LENGTH(nama_pelanggan) IN (SELECT MIN(LENGTH(nama_pelanggan)) FROM ms_pelanggan)
ORDER BY LENGTH(nama_pelanggan) DESC;

-- Tugas
-- Tampilkan nama orang yang memiliki nama paling panjang (pada row atas), dan nama orang paling pendek (pada row setelahnya). Gelar menjadi bagian dari nama. Jika ada lebih dari satu nama yang paling panjang atau paling pendek, harus ditampilkan semuanya.

-- Nama kolom yang harus ditampilkan: nama_pelanggan.