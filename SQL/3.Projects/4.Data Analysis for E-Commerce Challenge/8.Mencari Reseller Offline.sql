SELECT
    nama_user AS nama_pembeli,
    COUNT(1) AS jumlah_transaksi,
    SUM(total) AS total_nilai_transaksi,
    AVG(total) AS avg_nilai_transaksi,
    AVG(total_quantity) AS avg_quantity_per_transaksi
FROM
    orders
    INNER join users ON buyer_id = user_id
    INNER JOIN (
        SELECT
            order_id,
            SUM(quantity) AS total_quantity
        FROM
            order_details
        GROUP BY
            1
    ) AS summary_order USING(order_id)
WHERE
    orders.kodepos = users.kodepos
GROUP BY
    user_id,
    nama_user
HAVING
    COUNT(1) >= 8
    AND AVG(total_quantity) > 10
ORDER BY
    3 DESC;

-- Tugas
-- Selanjutnya, akan dicari tahu jenis pengguna yang menjadi reseller offline atau punya toko offline, yakni pembeli yang sering sekali membeli barang dan seringnya dikirimkan ke alamat yang sama. Pembelian juga dengan quantity produk yang banyak. Sehingga kemungkinan barang ini akan dijual lagi.

-- Jadi buatlah SQL query untuk mencari pembeli yang punya 8 tau lebih transaksi yang alamat pengiriman transaksi sama dengan alamat pengiriman utama, dan rata-rata total quantity per transaksi lebih dari 10.

-- Tampilkan nama_pembeli, jumlah_transaksi, total_nilai_transaksi, avg_nilai_transaksi, avg_quantity_per_transaksi. Urutkan dari total_nilai_transaksi yang paling besar