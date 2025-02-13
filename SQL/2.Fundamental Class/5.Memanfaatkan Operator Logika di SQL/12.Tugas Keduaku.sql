SELECT DISTINCT
	Customer_ID
FROM data_retail_undian
WHERE NOT(Unik_produk >= 3 AND Rata_rata_transaksi >= 1500000)


-- Tugas
-- Tugas keduaku adalah untuk mencari customer yang memenuhi kriteria berikut.

-- Customer lain di luar kriteria (1) berhak untuk mengikuti undian 3 (tiga) voucher belanja sebesar 500 ribu rupiah untuk customer yang beruntung.
-- Untuk mendapatkan data ini, Aku dapat menggunakan fungsi logika not dan and pada perintah where.

-- Dengan menggunakan perintah SQL yang tepat, aku mendapatkan sekitar 72.000 customer yang berhak untuk ikut undian kedua.