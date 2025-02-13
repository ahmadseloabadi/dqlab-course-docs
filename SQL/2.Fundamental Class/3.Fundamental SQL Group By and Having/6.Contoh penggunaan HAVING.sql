SELECT customer_id  FROM Subscription GROUP BY customer_id  HAVING COUNT(customer_id) > 1;

-- Tugas
-- Untuk penggunaan HAVING pada data yang ada pada bab sebelumnya, kita akan mencari customer_id yang melakukan perpindahan
-- subscription pada table subscription. 

-- Teori
-- Untuk apa Having digunakan dalam query
-- HAVING digunakan untuk menggantikan WHERE ketika menggunakan Group BY 
-- yang datanya di aggregasi.

-- Secara umum HAVING digunakan setelah melakukan GROUP BY berikut sintaks yang digunakan:

-- SELECT nama_kolom
-- FROM nama_table
-- GROUP BY nama_kolom
-- HAVING kondisi