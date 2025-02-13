SELECT * FROM tabel_A 
WHERE kode_pelanggan = 'dqlabcust03' 
UNION 
SELECT * FROM tabel_B 
WHERE kode_pelanggan = 'dqlabcust03';

-- Teori
-- Aku bertanya pada Senja, “Terus, kalo ada kondisi WHERE, syntaxnya bagaimana? Misalnya aku hanya ingin menggabungkan tabel yang isinya data penjualan untuk kode produk prod-04 saja?”

-- ”Mudah saja, tinggal tambahkan WHERE di kedua SELECT-statement,

-- Tugas Praktek:

-- Lakukanlah hal yang sama dengan yang dicontohkan, akan dipilih kode_pelanggan = 'dqlabcust03' sebagai kondisinya. 

-- Jika query-nya diketikkan dengan benar maka tabel penggabungan yang tampil dengan kondisi kode_pelanggan = 'dqlabcust03'