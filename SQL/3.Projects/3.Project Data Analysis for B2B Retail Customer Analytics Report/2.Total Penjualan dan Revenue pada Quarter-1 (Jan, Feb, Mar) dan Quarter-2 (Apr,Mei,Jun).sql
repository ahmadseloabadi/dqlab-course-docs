SELECT
 sum(quantity) AS total_penjualan,
 sum(quantity * priceeach) AS revenue
FROM
 orders_1
WHERE
 status = 'Shipped';
SELECT
 sum(quantity) AS total_penjualan,
 sum(quantity * priceeach) AS revenue
FROM
 orders_2
WHERE
 status = 'Shipped';

-- Tugas
-- Dari tabel orders_1 lakukan penjumlahan pada kolom quantity dengan fungsi aggregate sum() dan beri nama “total_penjualan”, kalikan kolom quantity dengan kolom priceEach kemudian jumlahkan hasil perkalian kedua kolom tersebut dan beri nama “revenue”
-- Perusahaan hanya ingin menghitung penjualan dari produk yang terkirim saja, jadi kita perlu mem-filter kolom ‘status’ sehingga hanya menampilkan order dengan status “Shipped”.
-- Lakukan Langkah 1 & 2, untuk tabel orders_2.
-- Notes: Jangan lupa untuk mengakhiri setiap statement dengan titik koma sehingga kedua statement dapat dijalankan bersamaan.(;)