SELECT * FROM dqlabregex WHERE jumlah_member REGEXP ~ '[^0-9]'

-- Tugas
-- Pada kolom jumlah_member di tabel dqlabregex, jumlah menunjukkan kuantitas yang artinya hanya angka saja (numerik) yang boleh menjadi isi barisnya (record data). Namun pada tabel tersebut terdapat kesalahan pengetikan / penginputan data sehingga terdapat karakter non-numerik pada kolom jumlah_member.

-- Setelah berhasil memecahkan tugas sebelumnya, Antara juga memberiku tugas untuk memeriksa dan menampilkan kesalahan input data pada kolom tersebut?. Antara memnerikan tips buatlah sebuah query yang menampilkan semua data dengan kesalahan penulisan angka pada kolom jumlah_member.

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT *: Menentukan bahwa semua kolom (*) akan dipilih dalam hasil query.
-- 2.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.
-- 3.WHERE jumlah_member REGEXP ~ '[^0-9]': Klausa WHERE digunakan untuk menerapkan kondisi filter pada baris-baris yang akan dipilih. Kondisi tersebut adalah jumlah_member REGEXP ~ '[^0-9]', yang berarti nilai dalam kolom jumlah_member harus mengandung karakter non-numerik.
-- jumlah_member: Merujuk pada kolom jumlah_member dalam tabel.
-- REGEXP ~ '[^0-9]': Operator yang digunakan untuk membandingkan nilai dalam kolom dengan pola regex. Di sini, pola [^0-9] digunakan untuk mencocokkan karakter apa pun yang bukan digit (0-9).