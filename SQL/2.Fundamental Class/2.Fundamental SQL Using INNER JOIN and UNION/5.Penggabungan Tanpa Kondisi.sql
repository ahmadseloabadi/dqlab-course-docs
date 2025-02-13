select * from ms_item_kategori, ms_item_warna;

-- Teori
-- Sesuai dugaanku. Aku kembali menemukan hal yang membingungkan. Dan, tampaknya hari ini Senja memang sudah mendedikasikan waktunya untuk mengajariku karena (beruntungnya!) Senja masih tepat di sebelahku.

-- “Nja, hehehe. Sorry mau ganggu lagi. Bagaimana kalau aku ingin menggabungkan tabel tanpa ada kondisi? Apakah tetap bisa memakai metode ini?”

-- Senja memicingkan matanya pada layar laptop yang kutunjuk sebelum menjawab. “Pertanyaan bagus. Penjelasan dan praktek yang kita lakukan pada materi sebelumnya adalah penggabungan dua tabel dengan menggunakan kondisi, yaitu terdapat data yang sama pada key kolom dari kedua tabel. Akan tetapi, memang benar, dalam beberapa case di real problem, sering kali terdapat permasalahan tertentu dimana kita ingin menggabungkan tabel tanpa ada kondisi. Proses penggabungan ini juga dapat dilakukan dengan metode koma dan tanpa menggunakan kondisi relasi antar kolom.”

-- Aku mencoba mencerna penjelasan Senja. Sebelum aku sempat memahami semuanya. Senja sudah mengajakku untuk melihat contoh.

-- Tugas
-- “Terlihat pada query kita hanya menyertakan nama dua tabel yang akan diambil datanya, tapi tidak ada informasi kondisi bagaimana kedua tabel tersebut berelasi satu dengan yang lainnya melalui key column. Lalu apa hasilnya?” tanya Senja retoris.

-- “Kamu hanya butuh untuk mengetik  query ini pada code editor dan jalankan, jika berhasil dengan baik maka akan muncul hasil dengan enam puluh empat baris data seperti berikut.”

-- Penjelasan
-- Aku menggumam mengerti. Terlihat banyak sekali hasil yang keluar, ini dikarenakan setiap baris data pada kedua tabel akan dihubungkan satu sama lain - tanpa ada hubungan.

-- Jumlah enam puluh empat baris data ini adalah hasil perkalian dari jumlah data dari kedua tabel, dimana masing-masing memiliki delapan baris data. Cara menggabungkan kedua tabelseperti ini disebut dengan mekanisme cross join.