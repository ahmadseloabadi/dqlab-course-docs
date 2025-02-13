SELECT * FROM dqlabregex WHERE REGEXP_LIKE( jumlah_member , '[^0-9]','i')


-- Tugas
-- Aku diminta Andra untuk memeriksa dan menampilkan kesalahan input data pada kolom jumlah_member lagi. Untungnya Andra juga memberiku tips untuk membuat sebuah query yang menampilkan semua data dengan kesalahan penulisan angka pada kolom jumlah_member dan abaikan kecil-besarnya huruf

-- Kesimpulan
-- Aku kembali mencatat dalam buku catatanku hal yang telah aku pelajari dari beberapa soal yang diberikan Antara.

-- REGEXP_LIKE adalah bagian perintah SQL yang digunakan untuk melakukan pencocokan pola dari ekspresi string dengan notasi regex terhadap suatu pola. Pola diberikan sebagai argument dengan sintaks umumnya adalah

-- SELECT * FROM nama_tabel WHERE REGEXP_LIKE (nama_kolom, 'argumen', match_parameter)

-- Dengan argumen merupakan kombinasi notasi regex yang diinginkan


-- REGEXP_LIKE berbeda dengan REGEXP. Perbedaannya pada REGEXP_LIKE mendukung fitur tambahan yakni match_parameter. Dimana match_parameter memungkinkan untuk pengubahan perilaku pencocokan default dari regex seperti mengabaikan atau tidak mengabaikan case sensitive, mengabaikan whitespace, dsb.

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT *: Menentukan bahwa semua kolom (*) akan dipilih dalam hasil query.
-- 2.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.
-- 3.WHERE REGEXP_LIKE(jumlah_member, '[^0-9]', 'i'): Klausa WHERE digunakan untuk menerapkan kondisi filter pada baris-baris yang akan dipilih. Kondisi tersebut adalah REGEXP_LIKE(jumlah_member, '[^0-9]', 'i'), yang berarti nilai dalam kolom jumlah_member mengandung karakter non-numerik. Di sini, pola [0-9] digunakan untuk mencocokkan karakter numerik, dan tanda ^ dalam kurung siku menandakan negasi, sehingga [^0-9] akan mencocokkan karakter apa pun selain karakter numerik. Argumen terakhir, 'i', mengaktifkan pencocokan yang tidak memperhatikan besar kecil huruf (case-insensitive).