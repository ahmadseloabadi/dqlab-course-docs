SELECT DISTINCT
	Customer_ID, Product,
    Average_transaction,
    Average_transaction >= 1000000 is_eligible
FROM summary_transaction;

-- Tugas
-- Pada minggu pertama pelaksanaan campaign year-end sale, DQ-Shop akan memberikan voucher berupa diskon belanja yang dapat digunakan sepanjang periode year-end sale. Kroma berkata bahwa voucher ini hanya akan diberikan kepada pelanggan setia DQ-Shop, yaitu customer yang pernah melakukan transaksi dengan rata-rata transaksi lebih dari 1 juta rupiah per produk akan berhak untuk mendapatkan voucher diskon.

-- Program voucher diskon yang aku kerjakan akan menggunakan data boolean.  Aku dapat menggunakan prinsip dimana customer dengan rata rata pembelian minimal Rp 1.000.000 akan diberi nilai 1 sementara jika rata-rata pembelian kurang dari Rp 1.000.000 akan bernilai 0.

-- Data pelanggan (customer_id) dengan rata-rata pembelian minimal Rp 1.000.000,- akan berhak untuk mendapatkan diskon belanja di year-end sale.

-- Dengan menggunakan konsep boolean, bantu aku yuk untuk mendapatkan customer yang berhak mendapatkan voucher diskon!