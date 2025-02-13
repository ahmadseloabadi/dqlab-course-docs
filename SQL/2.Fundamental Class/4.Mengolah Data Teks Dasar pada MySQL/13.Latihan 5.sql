SELECT CASE
WHEN
SUBSTR(SUBSTR(isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 3, LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) - LOCATE('|||', isi , LOCATE('|||', isi ) + 1) - 3), 4, LENGTH(SUBSTR(isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi , LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi , LOCATE('|||', isi ) + 1) - 3)) - 8) = 'Januari'
THEN '01'

WHEN
SUBSTR(SUBSTR(isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 3, LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) - LOCATE('|||', isi , LOCATE('|||', isi ) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi , LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi ) + 1) - 3)) - 8) = 'Februari'
THEN '02'

ELSE '00'
END AS MM 
FROM dqlabdatateks;

-- Latihan - 5 : 

-- Gunakan CASE WHEN untuk mengubah data Bulan (Nama Bulan) menjadi Urutan Bulan (MM) di field isi dari tabel dqlabdatateks.

-- Untuk membantu Aksara, aku memberikan petunjuk : 

-- Januari = 01
-- Februari = 02
-- …
-- Desember = 12