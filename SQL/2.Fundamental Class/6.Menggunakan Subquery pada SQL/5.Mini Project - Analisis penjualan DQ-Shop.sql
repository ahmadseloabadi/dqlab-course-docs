SELECT 
A.Product, 
A.total_buyer, 
D.loyal_customer
FROM (
   SELECT Product, COUNT(DISTINCT Customer_ID) total_buyer
   FROM data_retail
   GROUP BY 1) A
JOIN (
   SELECT B.Product, COUNT(DISTINCT Customer_ID) loyal_customer
   FROM data_retail B
   JOIN (
    SELECT Product, AVG(Count_Transaction) AS Count_Transaction
    FROM data_retail 
    GROUP BY 1
   ) C ON C.Product = B.Product AND B.Count_Transaction > C.Count_Transaction
   GROUP BY 1
   ) D ON A.Product = D.Product

-- Tugas
-- Ketika aku sudah kembali lagi ke mejaku setelah selesai berguru pada Andra, aku menerima 1 email lagi dari Kroma. Ternyata kali ini Kroma memintaku untuk memberikan sebuah report kepada management. Report yang dibutuhkan Kroma berupa data persentasi loyal customer disetiap produk. Definisi dari loyal customer adalah customer dengan jumlah transaksi lebih dari rata-rata jumlah transaksi permasing-masing produk.

-- penjelasan
-- Beginilah hasil analisaku. Dari total 12,199 pembeli produk tas, sekitar 2,294 dari mereka merupakan loyal customer dimana total transaksi mereka melebihi rata-rata pembelian pada produk tas.