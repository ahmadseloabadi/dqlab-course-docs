SELECT
    EXTRACT(
        YEAR_MONTH
        FROM
            created_at
    ) AS tahun_bulan,
    COUNT(1) AS jumlah_transaksi,
    AVG(DATEDIFF(paid_at, created_at)) AS avg_lama_dibayar,
    MIN(DATEDIFF(paid_at, created_at)) min_lama_dibayar,
    MAX(DATEDIFF(paid_at, created_at)) max_lama_dibayar
FROM
    orders
WHERE
    paid_at IS NOT NULL
GROUP BY
    1
ORDER BY
    1;

-- Tugas
-- Ingin diketahui bagaimana trend lama waktu transaksi dibayar sejak dibuat.

-- Buatlah SQL Query untuk menghitung rata-rata lama waktu dari transaksi dibuat sampai dibayar, dikelompokkan per bulan.

-- Tampilkan tahun_bulan, jumlah_transaksi, avg_lama_dibayar, min_lama_dibayar, max_lama_dibayar. Urutkan berdasarkan tahun_bulan