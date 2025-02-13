SELECT * FROM dqlabregex WHERE REGEXP_LIKE ( staf_pencatat, '^sen.?ja', 'i')

-- Tugas
-- Antara kembali mencoba memberiku tugas, yakni aku diharuskan menampilkan semua data dengan memfilter nama petugas pencatat pada kolom staf_pencatat di tabel dqlabregex dengan nama SenDja atau Sen_ja. Namun kali ini abaikan besar-kecilnya huruf.

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT *: Menentukan bahwa semua kolom (*) akan dipilih dalam hasil query.
-- 2.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.
-- 3.WHERE REGEXP_LIKE(staf_pencatat, '^sen.?ja', 'i'): Klausa WHERE digunakan untuk menerapkan kondisi filter pada baris-baris yang akan dipilih. Kondisi tersebut adalah REGEXP_LIKE(staf_pencatat, '^sen.?ja', 'i'), yang berarti nilai dalam kolom staf_pencatat harus cocok dengan pola regex yang dimulai dengan "sen", diikuti oleh satu karakter apa pun (".") dan diakhiri dengan "ja". Argumen terakhir, ‘i’, mengaktifkan pencocokan yang tidak memperhatikan besar kecil huruf (case-insensitive).