SELECT LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) as posisi_3
FROM dqlabdatateks;

-- Latihan-3 :

-- Sekarang cari posisi ‘|||’ ke-3 di field isi dari tabel dqlabdatateks

-- Penjelasan Bagian per Bagian:
-- LOCATE('|||', isi)
-- → Mencari posisi kemunculan pertama dari '|||' dalam field isi.

-- LOCATE('|||', isi, LOCATE('|||', isi) + 1)
-- → Mencari posisi kemunculan kedua dari '|||', dengan pencarian dimulai setelah kemunculan pertama (+1 untuk menghindari menemukan yang sama).

-- LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi) + 1) + 1)
-- → Mencari posisi kemunculan ketiga dari '|||', dengan pencarian dimulai setelah kemunculan kedua (+1 untuk menghindari menemukan yang sama).