#Konstruksi Dataframe
nama <- c("Kroma", "Andra", "Aksara", "Antara", "Senja")
pekerjaan <- c("Manager", "Senior Data Scientist", "Data Analyst", "Data Engineer", "Senior Data Analyst")
periode_kerja <- c(5,2,1,1,3)
df <- data.frame(nama,pekerjaan,periode_kerja)

#Ubahlah semua data character yang ada pada Dataframe df menjadi huruf kecil
lapply(df, tolower)

#Tampilkan kelas atau tipe data dari tiap kolom pada df dengan menggunakan lapply()
lapply(df, class)

# Teori
# sekarang saatnya untuk mempelajari cara mengimplementasikan function pada elemen-elemen yang ada di dalam Dataframe.

# Cara pertama yang akan digunakan adalah dengan menggunakan lapply(). Syntax dari lapply() adalah sebagai berikut: 


# lapply(X, FUN, ...)


# lapply() menerima sebuah vector, list, atau Dataframe (X) dan mengimplementasikan FUN (function) untuk setiap element yang ada di dalamnya. Output atau hasil dari lapply() adalah sebuah list dengan ukuran yang sama dengan X, dimana setiap element yang dihasilkan merupakan hasil dari implementasi FUN(function).