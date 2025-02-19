#Konstruksi Dataframe
nama <- c("Kroma", "Andra", "Aksara", "Antara", "Senja")
pekerjaan <- c("Manager", "Senior Data Scientist", "Data Analyst", "Data Engineer", "Senior Data Analyst")
periode_kerja <- c(5,2,1,1,3)
df <- data.frame(nama,pekerjaan,periode_kerja)

#Tampilkan isi dari df
df

#Tampilkan jabatan dari Kroma
df[1, 2]

#Tampilkan jabatan dari Senja
df[5, 2]

#Tampilkan sudah berapa lama Andra bekerja di DQLab
df[2, 3]

#Tampilkan sudah berapa lama Aksara bekerja di DQLab
df[3, 3]

#Tampilkan semua informasi mengenai Antara
df[4, ]

# Tugas
# Untuk mempraktikkan akses element pada Dataframe, Andra memberikan instruksi kepadaku sebagai berikut :

# Tampilkan isi dari Dataframe
# Tampilkan jabatan dari Kroma
# Tampilkan jabatan dari Senja
# Tampilkan sudah berapa lama Andra bekerja di DQLab
# Tampilkan sudah berapa lama Aksara bekerja di DQLab
# Tampilkan semua informasi mengenai Antara