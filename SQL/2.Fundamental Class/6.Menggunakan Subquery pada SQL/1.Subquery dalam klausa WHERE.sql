#Menghitung customer yang membeli Sepatu dan Jaket
SELECT COUNT(DISTINCT customer_id) total_buyer_Sepatu_Jaket
FROM data_retail
WHERE product = 'Sepatu' 
AND customer_id IN (
 	SELECT distinct Customer_ID
    FROM data_retail
    WHERE product = 'Jaket');

#Menghitung customer yang membeli Sepatu dan Baju
SELECT COUNT(DISTINCT customer_id) total_buyer_Sepatu_Baju
FROM data_retail
WHERE product = 'Sepatu' 
AND customer_id IN (
 	SELECT distinct Customer_ID
    FROM data_retail
    WHERE product = 'Baju');
    
#Menghitung customer yang membeli Sepatu dan Tas
SELECT COUNT(DISTINCT customer_id) total_buyer_Sepatu_Tas
FROM data_retail
WHERE product = 'Sepatu' 
AND customer_id IN (
 	SELECT distinct Customer_ID
    FROM data_retail
    WHERE product = 'Tas');

-- Tugas:

-- "Good, kamu sudah paham ternyata. Kalau begitu, dengan menggunakan perintah diatas, coba kamu cari jumlah customer yang membeli sepatu dan jaket dan customer yang membeli sepatu dan baju!" perintah Andra. 