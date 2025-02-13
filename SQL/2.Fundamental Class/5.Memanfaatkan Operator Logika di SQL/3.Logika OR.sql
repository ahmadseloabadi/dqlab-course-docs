SELECT 
     Customer_ID, 
     Product, 
     average_transaction_amount,
     product = 'Jaket' OR product = 'Baju' buyer_fashion
FROM data_retail;

-- Teori
-- Logika OR akan bernilai TRUE (1) ketika keseluruhan pernyataan bernilai benar atau ketika salah satu pernyataan bernilai benar dan yang lainnya bernilai salah. Operator logika OR hanya akan bernilai salah ketika keseluruhan pernyataan bernilai salah. Berikut adalah skema pengambilan keputusan untuk logika OR:

-- Penjelasan
-- Aku mencoba membaca data yang ada. Operator OR di atas akan menghasilkan nilai 1 ketika produk yang dibeli merupakan jaket atau baju. Namun, ketika customer membeli produk tas atau sepatu, maka akan bernilai 0

