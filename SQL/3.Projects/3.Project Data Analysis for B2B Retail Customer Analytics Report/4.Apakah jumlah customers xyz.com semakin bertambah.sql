SELECT 
	quarter(createdate) as quarter, 
	count(distinct customerid) as total_customers 
FROM 
	(SELECT 
     		customerid,
		createdate,
		quarter(createdate) as quarter 
     	FROM customer 
WHERE 
	createdate between '2004-01-01' and '2004-06-30') as tabel_b
GROUP BY 
	quarter(createdate);

-- Tugas
-- Penambahan jumlah customers dapat diukur dengan membandingkan total jumlah customers yang registrasi di periode saat ini dengan total jumlah customers yang registrasi diakhir periode sebelumnya.

-- Dari tabel customer, pilihlah kolom customerID, createDate dan tambahkan kolom baru dengan menggunakan fungsi QUARTER(…) untuk mengekstrak nilai quarter dari CreateDate dan beri nama “quarter”
-- Filter kolom “createDate” sehingga hanya menampilkan baris dengan createDate antara 1 Januari 2004 dan 30Juni 2004
-- Gunakan statement Langkah 1 & 2 sebagai subquery dengan alias tabel_b
-- Hitunglah jumlah unik customers à tidak ada duplikasi customers dan beri nama “total_customers”
-- Kelompokkan total_customer berdasarkan kolom “quarter”, dan jangan lupa menambahkan kolom ini pada bagian select.