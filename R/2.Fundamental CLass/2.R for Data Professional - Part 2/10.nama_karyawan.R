#variable sisa_cuti
sisa_cuti <- c(13,10,6,12,7)
 
#variable nama_karyawan
nama_karyawan <- c("Senja","Aksara","Antara","Kroma","Andra")
 
#memberi nama pada sisa_cuti
names(sisa_cuti) <- nama_karyawan
 
#karyawan yang memiliki sisa cuti lebih dari 10
sisa_cuti[sisa_cuti > 10]
 
#karyawan dengan sisa cuti terkecil
min(sisa_cuti)
 
#rata-rata sisa cuti karyawan
mean(sisa_cuti)

# Tugas dari Andra :

# Data sisa cuti karyawan DQLab yang dapat dilihat pada Tabel sisa cuti karyawan DQLab.
# Buatlah vector bernama sisa_cuti yang berisi data angka sisa cuti dari masing-masing karyawan (urut dari Senja - Andra).
# Buatlah vector bernama nama_karyawan yang berisi nama dari karyawan DQLab (urut dari Senja - Andra).
# Berikan nama kepada vector sisa_cuti dengan menggunakan nama_karyawan.
# Tampilkan karyawan yang memiliki sisa cuti lebih dari 10.
# Tampilkan karyawan dengan sisa cuti terkecil.
# Berapa rata-rata sisa cuti yang dimiliki karyawan DQLab?
 

# Tabel sisa cuti karyawan DQLab

# No	Nama	Sisa Cuti
# 1	Senja	13
# 2	Aksara	10
# 3	Antara	6
# 4	Kroma	12
# 5	Andra	7