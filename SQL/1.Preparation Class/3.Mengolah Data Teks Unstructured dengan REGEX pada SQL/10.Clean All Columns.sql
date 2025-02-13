SELECT no_pencatatan,
CASE
 WHEN REGEXP_LIKE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})')
  THEN REGEXP_REPLACE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})', '$3-$2-$1')
 ELSE
  REGEXP_REPLACE(tanggal_catat, '([0-9]{2})/([0-9]{2})/([0-9]{4})', '$3-$1-$2')
END AS tanggal_catat,
kota,
REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member,
REGEXP_REPLACE(staf_pencatat, 'Sen.?ja','Senja') AS staf_pencatat
FROM dqlabregex;

-- Tugas

-- Sepertinya Antara mulai mempercayaiku dengan project-project yang ada di kantor. Aku diberikan tugas Antara untuk melakukan penggantian record pada masing-masing kolom pada tabel dqlabregex. Ini adalah beberapa catatan penting yang diberikan Antara untukku:

-- Pada kolom tanggal_catat ubah semua format tanggalnya menjadi format tanggal yang di-support oleh SQL salah satunya adalah format YYYY-MM-DD.
-- Hapus setiap karakter non-numerik pada kolom jumlah_member.
-- Ubah record yang memuat Sendja maupun padanannya menjadi Senja.
-- Penamaan kolom dan urutannya tidak ada yang diubah.

-- Dengan proses belajarku sebelumnya, aku antusias mengerjakan tugas ini!

-- Kalau prosesnya benar, seharusnya tabel akan berubah dari TABEL A menjadi TABEL B:

-- Berikut adalah penjelasan mengenai cara kerja query yang digunakan:

-- 1.SELECT no_pencatatan, ...: Menentukan kolom-kolom yang akan ditampilkan dalam hasil query. Kolom no_pencatatan, tanggal_catat, kota, jumlah_member, dan staf_pencatat akan ditampilkan.
-- 2.CASE WHEN REGEXP_LIKE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})') THEN ... ELSE ... END AS tanggal_catat: Menggunakan ekspresi CASE untuk melakukan kondisi pada kolom tanggal_catat. Jika nilai pada kolom tanggal_catat sesuai dengan pola regex '([0-9]{2})-([0-9]{2})-([0-9]{4})', maka fungsi REGEXP_REPLACE akan diterapkan untuk mengubah format tanggal menjadi 'tahun-bulan-tanggal'. Jika tidak sesuai, maka fungsi REGEXP_REPLACE akan diterapkan untuk mengubah format tanggal menjadi 'tahun-bulan-tanggal'.
-- 3.kota: Menampilkan kolom kota seperti aslinya.
-- 4.REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member: Menggunakan fungsi REGEXP_REPLACE untuk menghapus karakter non-numerik pada kolom jumlah_member. Karakter non-numerik akan diganti dengan string kosong.
-- 5.REGEXP_REPLACE(staf_pencatat, 'Sen.?ja','Senja') AS staf_pencatat: Menggunakan fungsi REGEXP_REPLACE untuk mengganti string 'Senja' pada kolom staf_pencatat yang memiliki variasi penulisan seperti 'Sendja'. String 'Senja' akan digunakan sebagai pengganti.