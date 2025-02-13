SELECT LEFT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 2) AS DD
FROM dqlabdatateks;

-- Latihan - 2 :

-- Aku meminta Antara untuk mengambil data DD di field isi dari tabel dqlabdatateks