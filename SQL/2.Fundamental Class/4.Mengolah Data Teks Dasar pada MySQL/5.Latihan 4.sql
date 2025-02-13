SELECT LEFT(isi , LOCATE('|||', isi ) -1) as Nama
FROM dqlabdatateks;


-- Latihan-4 :

-- Coba tampilkan data Nama di field isi dari tabel dqlabdatateks.
-- Untuk soal ini aku memberikan petunjuk: mulai dari kiri, sejumlah (posisi ‘|||’ ke-1 - 1)