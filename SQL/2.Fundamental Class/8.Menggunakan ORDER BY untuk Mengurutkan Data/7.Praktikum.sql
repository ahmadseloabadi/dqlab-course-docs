SELECT
	EXTRACT(YEAR_MONTH from (from_unixtime(Last_Transaction/1000))) month_transaction,
    Customer_ID,
    Product,
    sum(Count_Transaction) total_pembelian_produk
FROM
	data_retail
GROUP BY
	1,2,3
ORDER BY
	1 DESC

-- Tugas
-- Sekarang Nyi, coba kamu buat data penjualan produk per bulan untuk melihat data DQ Shop. Jangan lupa, data ini dapat membantu DQ Shop untuk mengetahui apa produk teratas perbulan berdasarkan jumlahnya.”

-- Aku mendengarkan arahannya dan langsung mempraktikan materi yang sudah aku pelajari.

-- Ayo bantu aku untuk memperoleh data ini!

-- Untuk memperoleh data ini, aku perlu menggunakan fungsi untuk mengonversi data last_transaction menjadi bulan menggunakan fungsi yang sudah dijelaskan sebelumnya. Setelah mendapatkan data bulan, perintah ORDER BY dapat diterapkan untuk mengurutkan data produk teratas setiap bulannya.