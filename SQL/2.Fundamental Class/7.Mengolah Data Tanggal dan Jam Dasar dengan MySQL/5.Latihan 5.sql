SELECT Tanggal, SUM(jumlah * harga) as total
FROM dqlab_retail
GROUP BY Tanggal;

-- Tugas
-- "Sekarang coba beritahu aku bagaimana cara untuk menampilkan data tanggal, total (group per tanggal)?"

