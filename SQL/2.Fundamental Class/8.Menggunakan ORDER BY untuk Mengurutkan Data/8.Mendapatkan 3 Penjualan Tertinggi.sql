SELECT 
	EXTRACT(YEAR_MONTH from (from_unixtime(Last_Transaction/1000))) year_month_transaction,
   	sum(Count_Transaction) total_pembelian_produk
FROM
	data_retail
WHERE 
	Product =  'Sepatu' AND
    EXTRACT(YEAR from (from_unixtime(Last_Transaction/1000))) in (2018 , 2019)
GROUP BY
	1
ORDER BY 
	2 DESC
LIMIT 
	3;

-- Tugas
-- Untuk mendapatkan informasi penjualan tertinggi & terendah 3 bulan teratas, aku dapat menggunakan perintah "LIMIT 3".
-- Dengan menggunakan perintah ini, query SQL yang dilakukan akan menghasilkan 3 nilai saja. Karena produk yang ingin dilihat adalah produk 'Sepatu' pada tahun 2018 - 2019, maka aku filter reportku untuk hanya menampilkan 'Sepatu' pada tahun 2018 - 2019.