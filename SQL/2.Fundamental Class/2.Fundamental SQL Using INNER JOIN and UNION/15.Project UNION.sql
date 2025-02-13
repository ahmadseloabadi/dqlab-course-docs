SELECT nama_produk, kode_produk, harga FROM ms_produk_1
WHERE harga < 100000
UNION
SELECT nama_produk, kode_produk, harga FROM ms_produk_2
WHERE harga < 50000;

-- Tugas
-- Persiapkanlah data katalog mengenai mengenai nama - nama produk yang akan dijual di suatu store. Data tersebut akan digunakan dalam meeting untuk mereview produk mana saja yang akan dilanjutkan penjualannya dan mana yang tidak akan dilanjutkan.

-- Siapkan hanya data produk dengan harga di bawah 100K untuk kode produk prod-1 sampai prod-5; dan dibawah 50K untuk kode produk prod-6 sampai prod-10, tanpa mencantumkan kolom no_urut.

-- Saat mengecek data produk di database, terdapat 2 tabel yang sama - sama berisi data katalog, yaitu:

-- Tabel ms_produk_1


-- Tabel ms_produk_2