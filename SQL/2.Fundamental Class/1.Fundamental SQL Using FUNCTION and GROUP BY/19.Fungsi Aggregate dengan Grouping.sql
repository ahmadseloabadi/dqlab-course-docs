select province, count(distinct order_id) as total_unique_order, sum(item_price) as revenue from sales_retail_2019 group by province;


-- Teori
-- “Tambahan lagi, Aksara. Kamu masih ingatkan fungsi agregasi yang kita pelajari dan praktikkan sebelumnya? Pada fungsi itu kita belum menggunakan group by sehingga hasil SUM dan COUNT kita adalah hasil SUM dan COUNT dari seluruh baris yang ada di tabel data penjualan.”

-- “Ada data penjualannya kah, Nja? Biar lebih mudah membayangkan dan mempraktikkannya,” usulku.

-- Senja membuka data penjualan perusahaan tahun lalu untukku. Wow!

-- “Kalau begitu, kita praktik langsung saja. Sekarang coba kamu gunakan fungsi agregasi dan GROUP BY untuk menghitung total penjualan dari setiap provinsi di tahun 2019, dan kita bandingkan dengan hasil fungsi agregasi tanpa menggunakan group by,” pinta Senja.