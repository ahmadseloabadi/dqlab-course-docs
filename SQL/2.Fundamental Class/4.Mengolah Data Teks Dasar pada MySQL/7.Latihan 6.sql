SELECT SUBSTR(isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 3 , 
LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) - LOCATE('|||', isi , LOCATE('|||', isi ) + 1) - 3) as TanggalLahir
FROM dqlabdatateks;


-- Latihan-6 :

-- Tuliskan cara untuk menampilkan data TanggalLahir di field isi dari tabel dqlabdatateks.
-- Tak lupa aku memberikan petunjuk untuk Antara yaitu setelah posisi ‘|||’ ke-2, sejumlah (posisi ‘|||’ ke-3 - posisi ‘|||’ ke-2