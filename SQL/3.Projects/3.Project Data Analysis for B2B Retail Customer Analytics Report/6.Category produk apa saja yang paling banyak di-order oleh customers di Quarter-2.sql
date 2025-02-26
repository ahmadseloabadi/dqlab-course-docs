SELECT 
	left(productcode,3) as categoryid,
    count(distinct ordernumber) as total_order,
    sum(quantity) as total_penjualan 
FROM 
	(select productcode,ordernumber,quantity,status,left(productcode,3) as categoryid from orders_2 WHERE 
    status = "Shipped") tabel_c
GROUP BY 
	left(productcode,3)
ORDER BY 
	count(distinct ordernumber)
DESC;

-- Tugas
-- Untuk mengetahui kategori produk yang paling banyak dibeli, maka dapat dilakukan dengan menghitung total order dan jumlah penjualan dari setiap kategori produk.

-- Dari kolom orders_2, pilih productCode, orderNumber, quantity, status
-- Tambahkan kolom baru dengan mengekstrak 3 karakter awal dari productCode yang merupakan ID untuk kategori produk; dan beri nama categoryID
-- Filter kolom “status” sehingga hanya produk dengan status “Shipped” yang diperhitungkan
-- Gunakan statement Langkah 1, 2, dan 3 sebagai subquery dengan alias tabel_c
-- Hitunglah total order dari kolom “orderNumber” dan beri nama “total_order”, dan jumlah penjualan dari kolom “quantity” dan beri nama “total_penjualan”
-- Kelompokkan berdasarkan categoryID, dan jangan lupa menambahkan kolom ini pada bagian select.
-- Urutkan berdasarkan “total_order” dari terbesar ke terkecil