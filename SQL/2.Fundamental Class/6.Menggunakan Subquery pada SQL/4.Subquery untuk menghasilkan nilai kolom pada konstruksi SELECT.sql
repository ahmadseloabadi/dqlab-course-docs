SELECT
	Customer_ID, Count_Transaction,
    (
    SELECT AVG(Count_Transaction)
    		FROM data_retail
            WHERE product = 'Sepatu'
    ) Avg_Transaction
FROM data_retail
WHERE product = 'Sepatu'

-- Teori
-- "Langkah berikutnya adalah menggabungkan data ini dengan total transaksi DQ-Shop. Kamu dapat menggunakan perintah SQL diatas sebagai inner query dan menambahkan dalam perintah select untuk menambahkan kolom baru yaitu rata-rata transaksi, ya.

