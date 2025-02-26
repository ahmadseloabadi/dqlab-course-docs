SELECT
    nama_user AS nama_pembeli,
    COUNT(1) AS jumlah_transaksi,
    SUM(total) AS total_nilai_transaksi,
    MIN(total) AS min_nilai_transaksi
FROM
    orders
    INNER JOIN users ON buyer_id = user_id
GROUP BY
    user_id,
    nama_user
HAVING
    COUNT(1) > 5
    AND MIN(total) > 2000000
ORDER BY
    3 DESC;

-- Tugas
-- Buatlah SQL query untuk mencari pembeli yang sudah bertransaksi lebih dari 5 kali, dan setiap transaksi lebih dari 2,000,000.


-- Tampilkan nama_pembeli, jumlah_transaksi, total_nilai_transaksi, min_nilai_transaksi. Urutkan dari total_nilai_transaksi terbesar!