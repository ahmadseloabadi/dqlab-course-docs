SELECT DISTINCT
Product  Produk,
avg(Average_transaction) 'Jumlah transaksi (Rupiah)',
sum(Count_Transaction) 'Barang terjual'
FROM summary_transaction
GROUP BY Product


-- Tugas
-- Aku tidak membutuhkan operator logika untuk pembuatan report analisis stok barang. Aku cukup melakukan query sederhana untuk mendapatkan data. 

-- Perintah GROUP BY pada dasarnya digunakan untuk mengelompokkan data berdasarkan suatu fungsi agregat seperti sum (total), avg (rata-rata), min (nilai minimum), dan sebagainya. Pada contoh diatas, aku ingin mendapatkan data total barang yang terjual untuk masing-masing produk, karena itu, aku dapat menggunakan perintah 'GROUP BY Product' untuk mendapatkan data agregat total penjualan dari setiap produk. 

-- Sebagai catatan, aku dapat menggunakan perintah 'GROUP BY Product' atau dapat menggunakan 'GROUP BY 1' dengan menyesuaikan posisi index pada perintah SQL (dalam kasus ini variabel product merupakan kolom pertama, jadi dapat diganti dengan 'GROUP BY 1').