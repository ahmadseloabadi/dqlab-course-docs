SELECT product_id, AVG(pinalty), COUNT(customer_id) AS total  FROM invoice GROUP BY product_id HAVING COUNT(customer_id) > 20;

-- Mini Quiz
-- Sekarang untuk lebih mengerti tentang penggunaan Having, mari kita coba selesaikan soal berikut. 

-- Lakukan query untuk dapat mengeluarkan product_id, rata-rata nilai pinalty dan jumlah customer_id yang di group by berdasarkan product_id
-- yang memiliki jumlah customer_id diatas nilai 20.