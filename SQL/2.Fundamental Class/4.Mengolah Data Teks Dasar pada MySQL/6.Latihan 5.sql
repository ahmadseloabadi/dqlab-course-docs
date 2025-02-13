SELECT SUBSTR(isi , LOCATE('|||', isi ) + 3, LOCATE('|||', isi, LOCATE('|||', isi ) + 1) - LOCATE('|||', isi ) - 3) as KotaLahir
FROM    ;

-- Latihan-5 :

-- Tampilkan data KotaLahir di field isi dari tabel dqlabdatateks.
-- Aku berikan petunjuk juga ya: setelah posisi ‘|||’ ke-1, sejumlah (posisi ‘|||’ ke-2 - posisi ‘|||’ ke-1