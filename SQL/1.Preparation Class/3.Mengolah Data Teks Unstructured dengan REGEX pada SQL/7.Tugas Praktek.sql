SELECT REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS pencatat
FROM dqlabregex

-- Tugas
-- Antara meminta Aksara untuk mengganti teks 'Sendja' menjadi 'Senja' pada kolom staf_pencatat. Gunakan notasi regex agar jika dikemudian hari terdapat teks padanan teks 'Senja' semisal 'Sen_ja', 'Sen ja', dsb berubah menjadi satu teks saja yakni 'Senja'. Setelah itu ubah nama kolom menjadi pencatat menggunakan query ALIAS (AS).

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS pencatat: Menentukan bahwa akan dipilih hasil penggantian menggunakan fungsi REGEXP_REPLACE. Fungsi ini mengambil tiga argumen: kolom staf_pencatat sebagai string sumber, pola reguler 'Sen.?ja' yang akan dicari dan digantikan, dan string 'Senja' yang akan digunakan sebagai pengganti.
-- 2.AS pencatat: Mengubah nama kolom staf_pencatatmenjadi pencatat
-- 3.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.