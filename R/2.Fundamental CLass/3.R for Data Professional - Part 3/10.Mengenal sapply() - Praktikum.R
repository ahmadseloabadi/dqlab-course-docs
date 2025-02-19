#Konstruksi Dataframe
nama <- c("Kroma", "Andra", "Aksara", "Antara", "Senja")
pekerjaan <- c("Manager", "Senior Data Scientist", "Data Analyst", "Data Engineer", "Senior Data Analyst")
periode_kerja <- c(5,2,1,1,3)
df <- data.frame(nama,pekerjaan,periode_kerja)

#Tampilkan kelas atau tipe data dari tiap kolom pada df dengan menggunakan lapply()
l_apply <- lapply(df, class)

#tampilkan isi dari variable l_apply
l_apply

#tampilkan class dari variable l_apply
class(l_apply)

#Tampilkan kelas atau tipe data dari tiap kolom pada df dengan menggunakan sapply()
s_apply <- sapply(df, class)

#tampilkan isi dari variable s_apply
s_apply

#tampilkan class dari variable s_apply
class(s_apply)

# Teori
# “Oke Nyi, sepertinya kamu sudah memahami lapply() dengan baik. Nah, supaya kamu semakin happy sekarang waktunya kamu untuk mempelajari sapply().” Mengikuti saran Andra, aku langsung membuka materi sapply() tersebut.

# Setelah memperkenalkan lapply(), materi ini akan memperkenalkan sapply(). Sebetulnya, lapply() dan sapply() sangat mirip, namun yang membedakan keduanya adalah output yang dihasilkan.

# Pada lapply(), output yang dihasilkan berbentuk list, sementara pada sapply(), output yang dihasilkan berbentuk array, sehingga lebih sederhana. Kepanjangan dari sapply() sendiri merupakan ‘simplified apply’.

# Secara syntax, sapply() juga sangat mirip dengan lappy(). Berikut ini syntaxnya :

# sapply(X, FUN, ...)