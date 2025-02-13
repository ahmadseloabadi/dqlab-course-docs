SELECT DISTINCT
Customer_ID,
Product,
Average_transaction,
Count_Transaction,
CASE
	WHEN Average_transaction < 1000000 then '1-2x Email dalam seminggu'
    WHEN Average_transaction > 1000000 then '4-5x Email dalam seminggu'
END AS frekuensi_email
FROM summary_transaction


-- Tugas Praktikum
-- Selain pemberian voucher diskon, DQ-Shop akan mengirimkan email kepada customer untuk memasarkan program year-end sale. Selain untuk memberitahu customer tentang program ini, DQ-Shop akan memberikan kode voucher diskon menggunakan data yang sudah dipersiapkan olehku.

-- Kroma akan mengirimkan email berupa katalog jenis-jenis barang yang akan dijual pada year-end sale. Untuk menarik perhatian customer, Kroma akan mengirimkan 4-5 email dalam seminggu untuk customer dengan rata-rata transaksi kurang dari 1.000.000. Customer loyal dengan rata-rata transaksi lebih dari 1.000.000 akan dikirimkan 1-2 email dalam seminggu beserta dengan kode voucher diskon.

-- Mari bantu aku untuk menyiapkan data customer yang akan dikirimkan email tentang program year-end sale!

-- Aku dapat menggunakan fungsi logika dan menggabungkannya dengan perintah case when untuk melakukan filtering dan penambahan kategori dalam data.