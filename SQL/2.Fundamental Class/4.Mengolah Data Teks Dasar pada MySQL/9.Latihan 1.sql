SELECT CONCAT_WS(' - ',
SUBSTR(isi , LOCATE('|||', isi ) + 3, LOCATE('|||', isi , LOCATE('|||', isi ) + 1) - LOCATE('|||', isi ) - 1),
RIGHT(isi , LENGTH(isi ) - LOCATE('|||', isi , LOCATE('|||', isi , LOCATE('|||', isi ) + 1) + 1) - 3 + 1)) AS TempatLahir
FROM dqlabdatateks;

-- Latihan 1
-- "Antara, tadi kita sudah berlatih dan kamu pun sudah menguasai cara untuk menampilkan data. Sekarang, lanjut lagi ya, kita belajar membuat query untuk menampilkan data: Nama, TanggalLahir, TempatLahir dari tabel dqlabdatateks," ajakku. 

-- "Tapi sebelum itu, aku akan memberikan soal latihan lagi seperti tadi agar kamu terbiasa. Perhatikan data berikut ini ya," tambahku.

-- Dengan Ketentuan :

-- Nama : kata pertama, dari kiri hingga sebelum ‘|||’ ke-1
-- Format TempatLahir : Kota - Propinsi
-- Format TanggalLahir : DD-MM-YYYY
-- Antara langsung kembali ke mode belajar. Memegang buku catatan dan alat tulisnya, lalu sibuk membuat coretan-coretan pada bukunya. 

-- Aku senang sekali melihat antusiasme belajarnya. Aku memberikan soal latihan yang mudah terlebih dulu. 

 

-- Latihan - 1:

-- Mengambil data TempatLahir di field isi dari tabel dqlabdatateks