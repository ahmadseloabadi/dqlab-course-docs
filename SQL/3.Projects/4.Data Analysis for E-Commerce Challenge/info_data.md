Data yang digunakan
Dataset yang digunakan merupakan data dari DQLab Store yang merupakan e-commerce dimana pembeli dan penjual saling bertemu. Pengguna bisa membeli barang dari pengguna lain yang berjualan. Setiap pengguna bisa menjadi pembeli sekaligus penjual.

Ada 4 tabel yang tersedia,

users, berisi detail data pengguna. Berisi,
user_id : ID pengguna
nama_user : nama pengguna
kodepos : kodepos alamat utama dari pengguna
email : email dari pengguna

products, berisi detail data dari produk yang dijual. Berisi,
product_id : ID produk
desc_product : nama produk
category : kategori produk
base_price : harga asli dari produk

orders, berisi transaksi pembelian dari pembeli ke penjual. Berisi,
order_id : ID transaksi
seller_id : ID dari pengguna yang menjual
buyer_id : ID dari pengguna yang membeli
kodepos : kodepos alamat pengirimian transaksi (bisa beda dengan alamat utama)
subtotal : total harga barang sebelum diskon
discount : diskon dari transaksi
total : total harga barang setelah dikurangi diskon, yang dibayarkan pembeli
created_at : tanggal transaksi
paid_at : tanggal dibayar
delivery_at : tanggal pengiriman

order_details, berisi detail barang yang dibeli saat transaksi. Berisi,
order_detail_id : ID table ini
order_id : ID dari transaksi
product_id : ID dari masing-masing produk transaksi
price : harga barang masing-masing produk
quantity : jumlah barang yang dibeli dari masing-masing produk
