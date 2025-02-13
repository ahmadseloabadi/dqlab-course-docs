SELECT LOCATE('|||', isi , LOCATE('|||',isi ) + 1) as posisi_2
FROM dqlabdatateks;


-- Latihan-2:

-- Sekarang, coba cari posisi ‘|||’ ke-2 di field isi dari tabel dqlabdatateks!

-- Penjelasan:
-- LOCATE('|||', isi) mencari posisi kemunculan pertama dari '|||'.
-- LOCATE('|||', isi) + 1 menentukan titik awal pencarian berikutnya, yaitu setelah '|||' pertama.
-- LOCATE('|||', isi, LOCATE('|||', isi) + 1) mencari posisi kemunculan kedua.