SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id HAVING MIN(total_price) < 500000;
SELECT product_id, MIN(pinalty) AS total FROM invoice GROUP BY product_id HAVING MIN(pinalty) < 50000;

-- Teori
-- Dalam pembahasan ini, penggunaan fungsi MIN sama halnya dengan fungsi MAX. Fungsi MIN di having juga digunakan untuk memfilter nilai minimum yang ada pada kolom yang ditentukan.

-- Sekarang kita coba menggunakan MIN dalam Having. Coba ikuti query dibawah ini:
-- SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id;

-- Query diatas akan menampilkan daftar nilai minimum pada kolom tersebut yang disesuaikan sesuai dengan kolom yang di grouping. Sekarang kita tambahkan fungsi Min di Having untuk memfilter nilai minimum total_price yang dibawah 500.000.
-- SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id HAVING MIN(total_price) < 500000;

-- Tugas Praktek

-- Seperti pada tugas praktek sebelumnya. Sekarang kamu tambahkan baris berikutnya agar nilai minimal dari pinalty dapat ditentukan. Gunakan filter nilai MIN pinalty di bawah 50000.