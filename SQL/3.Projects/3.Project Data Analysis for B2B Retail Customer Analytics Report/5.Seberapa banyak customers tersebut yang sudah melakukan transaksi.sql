SELECT 
	quarter(createdate) as quarter, 
    count(distinct customerid) as total_customers 
FROM 
	(SELECT 
     	customerid,
     	createdate,
     	quarter(createdate) as quarter 
     FROM customer 
     WHERE createdate between '2004-01-01' and '2004-06-30' and customerid in 
 (select distinct customerid from orders_1
UNION
select distinct customerid from orders_2)) as tabel_b
GROUP BY 
	quarter(createdate);

-- Tugas
-- Problem ini merupakan kelanjutan dari problem sebelumnya yaitu dari sejumlah customer yang registrasi di periode quarter-1 dan quarter-2, berapa banyak yang sudah melakukan transaksi

-- Dari tabel customer, pilihlah kolom customerID, createDate dan tambahkan kolom baru dengan menggunakan fungsi QUARTER(…) untuk mengekstrak nilai quarter dari CreateDate dan beri nama “quarter”
-- Filter kolom “createDate” sehingga hanya menampilkan baris dengan createDate antara 1 Januari 2004 dan 30 Juni 2004
-- Gunakan statement Langkah A&B sebagai subquery dengan alias tabel_b
-- Dari tabel orders_1 dan orders_2, pilihlah kolom customerID, gunakan DISTINCT untuk menghilangkan duplikasi, kemudian gabungkan dengan kedua tabel tersebut dengan UNION.
-- Filter tabel_b dengan operator IN() menggunakan 'Select statement langkah 4' , sehingga hanya customerID yang pernah bertransaksi (customerID tercatat di tabel orders) yang diperhitungkan.
-- Hitunglah jumlah unik customers (tidak ada duplikasi customers) di statement SELECT dan beri nama “total_customers”
-- Kelompokkan total_customer berdasarkan kolom “quarter”, dan jangan lupa menambahkan kolom ini pada bagian select.