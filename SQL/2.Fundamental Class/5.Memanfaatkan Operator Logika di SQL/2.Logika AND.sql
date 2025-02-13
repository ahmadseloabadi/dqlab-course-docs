SELECT
	Customer_ID, Product, average_transaction_amount,
    product = 'Jaket' AND average_transaction_amount >= 1000000  loyal_buyer_jaket
FROM data_retail
WHERE product = 'Jaket'

-- Teori
-- Logika AND dalam SQL berfungsi untuk membandingkan dua kondisi dan akan bernilai TRUE (1) ketika dua nilai yang dibandingkan bernilai benar (TRUE) dan akan bernilai FALSE (0) ketika salah satu nilai bernilai salah (FALSE).

-- Penjelasan
-- “Lihat kan? Fungsi di atas akan menghasilkan data ketika produk yang dibeli adalah Jaket dan dengan rata-rata transaksi lebih dari Rp 1.000.000,- customer akan dikategorikan sebagai loyal buyer untuk jaket,” Andra membantu menjelaskan maksud dari contoh yang terlihat.

