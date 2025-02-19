#Buatlah sebuah vector berisi nama-nama anggota DQ Universe
dq_universe <- c('Kroma','Andra','Aksara','Antara','Senja','Sunyi')

#Aplikasikan as.data.frame() untuk vector dq_universe
df <- as.data.frame(dq_universe)

#cek apakah variable df merupakan Dataframe
is.data.frame(df)

# Teori
# Hal ini dapat dilakukan dengan menggunakan function as.data.frame untuk mengubah suatu object atau variable menjadi sebuah Dataframe.

# Contohnya, seorang praktisi data memiliki sebuah vector dan ingin mengubah vector tersebut menjadi sebuah Dataframe. Langkah yang dapat dilakukan yaitu dengan menggunakan Syntax untuk as.data.frame yang berupa as.data.frame(object_yang_akan_diubah_menjadi_dataframe).

# Setelah itu, untuk melakukan pengecekkan apakah object yang dikonversi sudah menjadi atau belum menjadi sebuah Dataframe dapat menggunakan function is.data.frame.

# Instruksi :

# Buatlah sebuah vector bernama dq_universe yang berisi nama-nama anggota DQ Universe ("Kroma", "Andra", "Aksara", "Antara", "Senja", "Sunyi") secara berurutan
# Aplikasikan function as.data.frame pada vector dq_universe