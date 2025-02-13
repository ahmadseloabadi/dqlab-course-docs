SELECT YEAR(tanggal) as tahun, MONTH(tanggal) as bulan, 
SUM(jumlah * harga) as total
FROM dqlab_retail
GROUP BY YEAR(tanggal), MONTH(tanggal);

-- Tugas
-- "Sekarang aku ingin kamu membuat data tahun, bulan, total (group per tahun, bulan)!"

