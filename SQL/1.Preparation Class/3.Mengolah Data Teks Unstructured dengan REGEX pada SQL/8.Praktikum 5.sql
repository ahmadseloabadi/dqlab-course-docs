SELECT no_pencatatan, tanggal_catat, kota, REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member, staf_pencatat
FROM dqlabregex

-- Tugas
-- Aksara teringat pada tabel dqlabregex terdapat kolom jumlah_member yang memuat karakter non-numerik (bukan angka) pada record-nya. Dapatkah kamu membantu Aksara untuk menghapus karakter non-numerik pada kolom tersebut? Tampilkan semua kolom pada tabel tersebut dengan tidak mengubah nama kolom dan urutan yang ada dengan syarat karakter non-numerik sudah terhapus pada kolom jumlah_member.

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT no_pencatatan, tanggal_catat, kota, REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member, staf_pencatat: Menentukan kolom-kolom yang akan ditampilkan dalam hasil query. Selain kolom-kolom asli (no_pencatatan, tanggal_catat, kota, dan staf_pencatat), terdapat juga kolom baru dengan nama jumlah_member yang dihasilkan menggunakan fungsi REGEXP_REPLACE.
-- 2.FROM dqlabregex: Menentukan tabel yang digunakan dalam query, yaitu tabel dqlabregex.