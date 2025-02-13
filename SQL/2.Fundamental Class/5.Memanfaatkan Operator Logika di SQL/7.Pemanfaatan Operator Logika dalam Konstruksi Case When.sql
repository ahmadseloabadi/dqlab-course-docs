SELECT DISTINCT
Customer_ID,
Product,
Average_Transaction,
Count_Transaction,
CASE
	WHEN Average_transaction > 2000000 and Count_Transaction > 30 then 'Platinum Member'
    WHEN Average_transaction between 1000000 and 2000000 and Count_Transaction between 20 and 30 then 'Gold Member'
    WHEN Average_transaction < 1000000 and Count_Transaction<20 then 'Silver Member'
    	ELSE "Other Membership" end as Membership
FROM summary_transaction

-- Teori
-- “Selanjutnya, logika AND juga dapat digunakan dalam konstruksi statement CASE WHEN. Statement ini digunakan dalam perintah SELECT untuk membentuk variabel baru sesuai dengan operator logika. Sebagai contoh, misalnya kita ingin membentuk sebuah variabel baru yaitu DQ Shop Membership dengan kriteria sebagai berikut,” papar Andra.

-- Aku membaca kriteria yang disediakan:

-- Customer yang memiliki rata-rata transaksi lebih dari 2 juta dan jumlah transaksi lebih dari 30 kali akan menjadi “Platinum member.”
-- Customer yang memiliki rata-rata transaksi 1-2 juta dan jumlah transaksi 20-30 kali akan menjadi “Gold Member.”
-- Customer dengan rata-rata transaksi kurang dari 1 juta dan jumlah transaksi kurang dari 20x kali akan menjadi “Silver Member.”

-- Penjelasan
-- Lihat, kan? Dengan menggunakan statement CASE WHEN, kita dapat menggabungkan beberapa operator logika kedalam satu variabel baru dengan menambahkan perintah WHEN,” kata Andra.

-- Aku mengangguk dan merasa kagum melihat hasil yang keluar dengan penggunaan statement CASE WHEN.

-- “Ndra, sepertinya aku sudah bisa mulai mengerjakan tugas dari Kroma,” ujarku mantap.