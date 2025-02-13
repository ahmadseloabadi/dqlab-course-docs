select product_id, max(total_price) as total from invoice group by product_id;
select product_id, max(total_price) as total from invoice group by product_id having max(total_price) > 1000000;
select product_id, max(pinalty) as total from invoice group by product_id having max(pinalty) > 30000;

-- Teori
-- Dalam klausa kondisi Having dapat menggunakan fungsi MAX sebagai filter hasil dari aggregasi dari GROUP BY.

-- Tugas

-- Penggunaannya sama dengan fungsi max dengan yang digunakan pada Select secara umum, tetapi ini digunakan untuk melakukan filter data.
-- select product_id, max(total_price) as total from invoice group by product_id;

-- Query diatas akan menampilkan daftar nilai maksimum  pada kolom tersebut yang disesuaikan sesuai dengan kolom yang digrouping. Sekarang kita dapat menambahkan di baris berikutnya tentunya dengan menggunakan fungsi Max untuk mendapatkan jumlah total_price yang berada di atas 1.000.000.
-- select product_id, max(total_price) as total from invoice group by product_id having max(total_price) > 1000000;

-- Tambahkanlah baris berikutnya (baris ketiga) setelah kamu menuliskan kedua baris di atas. Perintah di baris ketiga ini ditujukan untuk menentukan nilai maksimal dari pinalty. Gunakanlah filter untuk nilai MAX pinalty di atas 30000