SELECT DISTINCT
    Product, 
    sum(Count_Transaction) total_transaksi
FROM data_retail
GROUP BY 1
ORDER BY 2 DESC

-- Tugas-3: Tampilkan daftar produk yang memiliki performa terbaik berdasarkan total barang terjual.

-- Untuk tugas ketiga, perintah SQL yang aku gunakan kurang lebih sama, dengan memanfaatkan perintah ORDER BY DESC.