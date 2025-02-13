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

-- penjelasan
-- “Wow! Ternyata gak sulit seperti yang kubayangkan. Penggabungan fungsi-fungsi lain dengan perintah ORDER BY bisa menghasilkan data yang diinginkan dengan mudah. Luar biasa,” ujarku kagum.

-- “Tepat sekali, menggabungkan fungsi dengan perintah ORDER BY dapat menghasilkan data yang diinginkan. Nah, apakah sekarang kamu sudah siap mempraktikkannya?” tanya Kroma.