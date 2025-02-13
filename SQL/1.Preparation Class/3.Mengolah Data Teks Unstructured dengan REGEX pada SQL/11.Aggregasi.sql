SELECT 
 SUM(REGEXP_REPLACE(jumlah_member, '[^0-9]', '')) AS total_member, 
 REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS staf_pencatat 
FROM dqlabregex 
GROUP BY 2 ORDER BY 1;

-- Tugas
-- Kroma ingin mengetahui total member yang telah dicatat oleh masing-masing staf_pencatat yakni total dari kolom jumlah_member yang dikelompokkan berdasarkan staf_pencatat, lalu ingin mengurutkannya dari yang terkecil hingga yang terbesar. Perlu diingat bahwa lakukan pembersihan data terlebih dahulu yakni dengan menghapus karakter non-numerik pada kolom jumlah_member dan mengganti teks 'Sendja' menjadi 'Senja' dengan notasi regex. 

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:
-- 1.SELECT SUM(REGEXP_REPLACE(jumlah_member, '[^0-9]', '')) AS total_member, ...: Menggunakan fungsi SUM untuk menghitung total jumlah member. Pada saat perhitungan, karakter non-numerik pada kolom jumlah_member akan dihapus menggunakan fungsi REGEXP_REPLACE dengan pola regex '[^0-9]'. Selanjutnya, hasil perhitungan akan ditampilkan dengan alias total_member.
-- 2.REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS staf_pencatat: Menggunakan fungsi REGEXP_REPLACE untuk mengganti string 'Senja' pada kolom staf_pencatat yang memiliki variasi penulisan seperti 'Sendja'. String 'Senja' akan digunakan sebagai pengganti.
-- 3.FROM dqlabregex: Menentukan tabel sumber data yaitu dqlabregex.
-- 4.GROUP BY 2: Melakukan pengelompokan data berdasarkan kolom ke-2 dalam SELECT statement, yaitu kolom staf_pencatat.
-- 5.ORDER BY 1: Melakukan pengurutan data berdasarkan kolom ke-1 dalam SELECT statement, yaitu kolom total_member, secara ascending.