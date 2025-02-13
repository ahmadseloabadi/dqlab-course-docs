SELECT DISTINCT
	Customer_ID, 
    count(distinct Product) jenis_barang,
    avg(Average_Transaction_Amount) rata_rata_transaksi,
    sum(Count_Transaction) total_transaksi
FROM data_retail
GROUP BY 1
ORDER by 4 DESC

-- Teori
-- SQL dapat memudahkan untuk melakukan pengurutan data, salah satu perintah yang dapat digunakan untuk mengurutkan data yaitu ORDER BY.  

-- “Ndra, boleh tunjukin contoh penggunaan ORDER BY yang kamu gunakan buat bikin data tadi ga?” 

-- Andra langsung menunjukkan penggunaan ORDER BY dengan hasil dari perintah SQL kepadaku.