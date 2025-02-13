SELECT 
    Customer_ID,
    Product,
    Average_Transaction_Amount,
    product = 'Jaket' XOR  average_transaction_amount > 1000000 logika_xor
FROM data_retail;

-- Teori
-- Logika XOR (exclusive - or) digunakan untuk membandingkan dua nilai dimana jika kedua nilai sama-sama benar atau sama-sama salah, maka akan menghasilkan nilai FALSE. 

-- Penjelasan
-- Operator XOR di atas menghasilkan nilai 1 ketika:

-- Produk yang dibeli adalah jaket dan rata-rata transaksi tidak lebih dari 1 juta.
-- Produk yang dibeli bukan merupakan jaket dan rata-rata transaksi lebih dari 1 juta.
-- Operator XOR akan menghasilkan nilai 0 ketika:

-- Produk yang dibeli adalah jaket dan rata-rata transaksi lebih dari 1 juta.
-- Produk yang dibeli bukan merupakan Jaket dan rata-rata transaksi kurang dari 1 juta.