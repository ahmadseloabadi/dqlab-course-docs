SELECT * FROM dqlabregex WHERE kota REGEXP 'ng$'


-- Tugas:

-- Antara mengajakku untuk langsung mempraktekkan perintah SQL REGEXP untuk menampilkan data pada tabel dqlabregex dengan kolom kota yang berakhiran 'ng'

-- Ingat! Notasi regex $ digunakan untuk mencocokan akhiran karakter. Jadi notasi 'ng$' mengisyaratkan untuk mengambil teks yang berakhiran dengan 'ng' yakni cocok dengan teks Bandung dan Semarang

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT *: Menentukan bahwa semua kolom (*) akan dipilih dalam hasil query.
-- 2.FROM dqlabregex: Menentukan tabel dqlabregex dari mana data akan diambil.
-- 3.WHERE kota REGEXP 'ng$': Menerapkan filter pada baris-baris data, hanya memilih baris-baris di mana nilai pada kolom kota cocok dengan pola ekspresi reguler 'ng$'.
-- kota: Merujuk pada kolom kota dalam tabel.
-- REGEXP: Menentukan bahwa perbandingan dengan regex akan dilakukan.
-- 'ng$': Mewakili pola regex. Dalam kasus ini, pola tersebut cocok dengan nilai dalam kolom kota yang diakhiri dengan huruf "ng".