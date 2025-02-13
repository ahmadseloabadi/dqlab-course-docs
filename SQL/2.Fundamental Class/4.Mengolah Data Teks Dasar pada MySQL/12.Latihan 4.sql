SELECT SUBSTR(
SUBSTR(isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 3, LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) - LOCATE('|||', isi , LOCATE('|||', isi ) + 1) - 3), 
4, 
LENGTH(SUBSTR(isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 3, LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) - LOCATE('|||', isi , LOCATE('|||', isi ) + 1) - 3)) - 8) AS Bulan
FROM dqlabdatateks;

-- Latihan - 4 :

-- "Mengambil data Bulan di field isi dari tabel dqlabdatateks. Silahkan langsung dicoba kerjakan ya, Tar. Kalau kamu bingung aku bisa berikan pentunjuk,"