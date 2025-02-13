SELECT tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, tr_penjualan.kode_produk, ms_produk.nama_produk, ms_produk.harga, tr_penjualan.qty, ms_produk.harga*tr_penjualan.qty as total 
FROM tr_penjualan 
INNER JOIN ms_produk 
ON tr_penjualan.kode_produk  = ms_produk.kode_produk ;

-- Tugas
-- “Oke, semua dariku sudah. Sekarang silakan dipraktikkan pada code editor untuk menggabungkan tabel tr_penjualan dan ms_produk dengan kolom yang ditampilkan dari tabel tr_penjualan adalah kode_transaksi, kode_pelanggan, kode_produk, qty. Untuk tabel ms_produk tampilkan kolom nama_produk dan harga." 

-- Aku mengangguk mantap. Senja sudah membekaliku sampai di sini. Ini saatnya aku mandiri.

-- Kemudian aku membentuk kolom total yang merupakan hasil perkalian setiap baris pada kolom harga di tabel ms_produk dengan kolom qty di tabel tr_penjualan.

-- "Tabel hasil penggabungan haruslah membentuk kolom-kolom dengan urutannya adalah kode_transaksi, kode_pelanggan, kode_produk, nama_produk, harga, qty, dan total,

-- Kesimpulan
-- Pada chapter INNER JOIN ini kita telah mempelajari bagaimana menggabungkan dua tabel berdasarkan key column-nya.

-- Pada tahap awal kita menggunakan INNER JOIN untuk menggabungkan keseluruhan kolom yang dimiliki oleh kedua tabel tersebut. 
-- Selanjutnya, kita menerapkan INNER JOIN dengan menggunakan prefix nama tabel untuk memilih kolom-kolom mana saja yang akan ditampilkan pada tabel hasil penggabungan.
-- Untuk chapter selanjutnya kita akan menggabungkan tabel dengan menggunakan UNION.