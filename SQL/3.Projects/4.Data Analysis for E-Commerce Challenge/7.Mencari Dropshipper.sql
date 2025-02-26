SELECT
    nama_user AS nama_pembeli,
    COUNT(1) AS jumlah_transaksi,
    COUNT(DISTINCT orders.kodepos) AS distinct_kodepos,
    SUM(total) AS total_nilai_transaksi,
    AVG(total) AS avg_nilai_transaksi
FROM
    orders
    INNER JOIN users ON buyer_id = user_id
GROUP BY
    user_id,
    nama_user
HAVING
    COUNT(1) >= 10
    AND COUNT(1) = COUNT(DISTINCT orders.kodepos)
ORDER BY
    2 DESC;

-- Tugas
-- Pada soal kali ini kamu diminta untuk mencari tahu pengguna yang menjadi dropshipper, yakni pembeli yang membeli barang akan tetapi dikirim ke orang lain. Ciri-cirinya yakni transaksinya banyak, dengan alamat yang berbeda-beda.

-- Jadi buatlah SQL query untuk mencari pembeli dengan 10 kali transaksi atau lebih yang alamat pengiriman transaksi selalu berbeda setiap transaksi.

-- Tampilkan nama_pembeli, jumlah_transaksi, distinct_kodepos, total_nilai_transaksi, avg_nilai_transaksi. Urutkan dari jumlah transaksi terbesar