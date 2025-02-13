SELECT
	Customer_ID,
    Product,
    sum(Count_Transaction) total_pembelian_produk
FROM
	data_retail
GROUP BY
	Customer_ID, Product
ORDER BY 
	1, 3 DESC;

-- Tugas
-- Gimana Nyi, sudah paham dengan materinya?” tanya Kroma kepadaku. Aku mengangguk mengiyakan. Setidaknya aku sudah punya sedikit gambaran.

-- “Kalau begitu, sekarang kamu coba membuat data tambahan untuk melihat produk teratas dengan total pembelian produk terbanyak untuk masing-masing customer. Nanti data ini akan digunakan untuk meningkatkan performa produk