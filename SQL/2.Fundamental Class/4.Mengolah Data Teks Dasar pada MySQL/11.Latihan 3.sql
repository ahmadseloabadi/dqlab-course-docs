SELECT RIGHT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4) AS YYYY
FROM dqlabdatateks;

-- Latihan - 3 :

-- "Boleh, kita coba ya sekarnag mengambil data YYYY di field isi dari tabel dqlabdatateks," kataku. 