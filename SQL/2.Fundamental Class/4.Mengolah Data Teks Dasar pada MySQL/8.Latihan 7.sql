SELECT RIGHT(isi , LENGTH(isi ) - LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) - 3 + 1) as Propinsi
FROM dqlabdatateks;

-- Latihan-7 :

-- Tampilkan data Propinsi di field isi dari tabel dqlabdatateks
-- Petunjuk untuk latihan ini adalah mulai dari kanan, sejumlah (panjang teks - posisi ‘|||’ ke-3