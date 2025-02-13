SELECT * FROM dqlabregex WHERE staf_pencatat REGEXP 'Sen.?ja'

-- Tugas
-- Antara mencoba memberiku tugas pertama yakni aku diharuskan menampilkan seluruh data dengan memfilter nama petugas pencatat pada kolom staf_pencatat di tabel dqlabregex dengan nama Senja atau Sendja. Namun pikirkan baik – baik notasi regex yang akan digunakan, sebisa mungkin notasi yang diketikkan sesuai juga dengan teks SenDja, Sen_ja, dan sebagainya yang memungkinkan.

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT *: Menentukan bahwa semua kolom (*) akan dipilih dalam hasil query.
-- 2.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.
-- 3.WHERE staf_pencatat REGEXP 'Sen.?ja': Klausa WHERE digunakan untuk menerapkan kondisi filter pada baris-baris yang akan dipilih. Kondisi tersebut adalah staf_pencatat REGEXP 'Sen.?ja', yang berarti nilai dalam kolom staf_pencatat harus cocok dengan pola ekspresi reguler 'Sen.?ja'.
-- staf_pencatat: Merujuk pada kolom staf_pencatat dalam tabel.
-- REGEXP: Operator yang digunakan untuk membandingkan nilai dalam kolom dengan pola regex.
-- 'Sen.?ja': Pola regex mencocokkan nilai yang memiliki 'Sen' diikuti dengan satu karakter opsional (titik) dan diikuti dengan 'ja'.