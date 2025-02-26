SELECT 
	quarter,
	sum(quantity) as total_penjualan,
	sum(quantity*priceeach) as revenue 
FROM 
	(select ordernumber,status,quantity,priceeach, 1 as quarter from orders_1
UNION
	select ordernumber,status,quantity,priceeach, 2 as quarter from orders_2) as tabel_a 
WHERE 
	status = 'Shipped'
GROUP BY 
	quarter;

-- Tugas
-- Pilihlah kolom “orderNumber”, “status”, “quantity”, “priceEach” pada tabel orders_1, dan tambahkan kolom baru dengan nama “quarter” dan isi dengan value “1”. Lakukan yang sama dengan tabel orders_2, dan isi dengan value “2”, kemudian gabungkan kedua tabel tersebut.
-- Gunakan statement dari Langkah 1 sebagai subquery dan beri alias “tabel_a”.
-- Dari “tabel_a”, lakukan penjumlahan pada kolom “quantity” dengan fungsi aggregate sum() dan beri nama “total_penjualan”, dan kalikan kolom quantity dengan kolom priceEach kemudian jumlahkan hasil perkalian kedua kolom tersebut dan beri nama “revenue”
-- Filter kolom ‘status’ sehingga hanya menampilkan order dengan status “Shipped”.
-- Kelompokkan total_penjualan berdasarkan kolom “quarter”, dan jangan lupa menambahkan kolom ini pada bagian select.