SELECT tanggal_catat, REGEXP_REPLACE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})','$2/$1/$3') AS tanggal_pencatatan
FROM dqlabregex

-- TUgas
-- Aksara kembali memperhatikan tabel dqlabregex, pada kolom tanggal_catat ternyata format tanggal pada baris pertama dan kedua berbeda dengan lainnya. Untuk merapikannya, Aksara memutuskan untuk merubah standarisasi penulisan tanggal DD-MM-YYYY (tanggal - bulan - tahun) menjadi MM/DD/YYYY (bulan / tanggal / tahun) agar seragam. Bantu Aksara untuk merapikan format tanggal pada kolom tersebut dan ubah nama kolom menjadi tanggal_pencatatan. Tampilkan kolom awal (tanggal_catat) dan kolom setelah diseragamkan (tanggal_pencatatan).

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT tanggal_catat, REGEXP_REPLACE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})','$2/$1/$3') AS tanggal_pencatatan: Menentukan kolom-kolom yang akan ditampilkan dalam hasil query. Kolom tanggal_catat akan tetap ditampilkan seperti aslinya, sedangkan terdapat juga kolom baru dengan nama tanggal_pencatatan yang dihasilkan menggunakan fungsi REGEXP_REPLACE.
-- 2.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.