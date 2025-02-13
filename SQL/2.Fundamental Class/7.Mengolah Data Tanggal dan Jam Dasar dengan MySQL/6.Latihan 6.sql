SELECT YEAR(Tanggal) as tahun, SUM(Jumlah * Harga) as total
FROM dqlab_retail
GROUP BY YEAR(Tanggal);

-- Tugas
-- "Sekarang tolong tunjukkan caranya menampilkan data tahun, total (group per tahun)"