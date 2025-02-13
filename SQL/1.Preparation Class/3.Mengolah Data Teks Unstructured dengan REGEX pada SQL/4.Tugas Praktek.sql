SELECT * FROM dqlabregex WHERE REGEXP_LIKE(staf_pencatat,'^AN')

-- Tugas
-- Antara menugaskan kepada Aksara untuk mencari nama-nama staf_pencatat pada tabel yang diawali dengan 'an' dengan mengabaikan besar – kecilnya huruf.

-- Penjelasan
-- Notasi ^AN mempunyai arti cari awalan AN pada string. Memberi karakter i pada match_parameter berarti case sensitive diabaikan sehingga kata "Andra" dan "Antara" sesuai dengan notasi regex ^AN. Jika tidak menggunakan match_parameter i maka kata "Andra" dan "Antara" tidak akan sesuai dikarenakan huruf n pada teks merupakan huruf kecil sedangkan notasi regex yang diketik merupakan huruf besar.

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT *: Menentukan bahwa semua kolom (*) akan dipilih dalam hasil query.
-- 2.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.
-- 3.WHERE REGEXP_LIKE(staf_pencatat, '^AN'): Klausa WHERE digunakan untuk menerapkan kondisi filter pada baris-baris yang akan dipilih. Kondisi tersebut adalah REGEXP_LIKE(staf_pencatat, '^AN'), yang berarti nilai dalam kolom staf_pencatat harus dimulai dengan huruf "AN".
-- REGEXP_LIKE(staf_pencatat, '^AN'): Fungsi REGEXP_LIKE digunakan untuk mencocokkan nilai dalam kolom staf_pencatat dengan pola ekspresi reguler. Di sini, pola ^AN digunakan untuk mencocokkan baris yang dimulai dengan huruf "AN".