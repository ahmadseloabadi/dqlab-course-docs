library(openxlsx)
library(reshape2)
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
penduduk.dki.transform <- melt(data=penduduk.dki.xlsx, id.vars=c( "NAMA.KECAMATAN", "NAMA.KELURAHAN"), measure.vars = c("35-39.Laki-Laki", "35-39.Perempuan"), variable.name = "DEMOGRAFIK", value.name="JUMLAH") 
#Memecah isi kolom DEMOGRAFIK menjadi "RENTANG.UMUR" dan "JENIS.KELAMIN"
penduduk.dki.transform[c("RENTANG.UMUR", "JENIS.KELAMIN")] <- colsplit(penduduk.dki.transform$DEMOGRAFIK,"\\.",c("RENTANG.UMUR","JENIS.KELAMIN"))
penduduk.dki.transform$DEMOGRAFIK <- NULL
penduduk.dki.transform


# Teori
# Pada praktek sebelumnya, kita telah melakukan transformasi data kolom ke baris seperti berikut.

# NAMA.KECAMATAN      NAMA.KELURAHAN      DEMOGRAFIK      JUMLAH

# GAMBIR              GAMBIR              35-39.Laki-Laki 166

# GAMBIR              GAMBIR              35-39.Perempuan 174

# GAMBIR              CIDENG              35-39.Laki-Laki 850

# GAMBIR              CIDENG              35-39.Perempuan 748

# GAMBIR              PETOJO UTARA        35-39.Laki-Laki 954

# GAMBIR              PETOJO UTARA        35-39.Perempuan 920

# Tahap selanjutnya adalah memisahkan kolom "DEMOGRAFIK" yang memiliki dua informasi ini menjadi dua kolom – yaitu "RENTANG UMUR" dan "JENIS KELAMIN".

# NAMA.KECAMATAN      NAMA.KELURAHAN      RENTANG.UMUR    JENIS.KELAMIN   JUMLAH

# GAMBIR              GAMBIR              35-39.          Laki-Laki       166

# GAMBIR              GAMBIR              35-39           Perempuan       174

# GAMBIR              CIDENG              35-39           Laki-Laki       850

# GAMBIR              CIDENG              35-39           Perempuan       748

# GAMBIR              PETOJO UTARA        35-39           Laki-Laki       954

# GAMBIR              PETOJO UTARA        35-39           Perempuan       920

# Untuk mencapai tujuan ini, kita akan menggunakan tiga konstruksi perintah.

# Perintah pertama adalah menggunakan function colsplit sebagai berikut.

# colsplit(penduduk.dki.transform$DEMOGRAFIK,"\\.",c("RENTANG.UMUR","JENIS.KELAMIN"))
# Berikut adalah penjelasan dari perintah di atas.

# Komponen                            Deskripsi

# colsplit                            Function untuk memecah satu variable menjadi beberapa variable

# penduduk.dki.transform$DEMOGRAFIK   Artinya data frame mengambil kolom ke …

# "\\."                               Karakter pemisah, dalam hal ini tanda titik (.). Khusus untuk tanda titik harus diisi dengan didahului backslash dua kali

# c("RENTANG.UMUR", "JENIS.KELAMIN")  Vector yang berisi nama-nama variable baru hasil pemecahan variable

 

# Perintah kedua adalah perintah untuk memasukkan variable hasil pecahan ke dalam dua kolom di data.frame dengan cara berikut.

# penduduk.dki.transform[c("RENTANG.UMUR", "JENIS.KELAMIN")] <- …
# Berikut adalah penjelasan dari perintah di atas.

# Komponen                            Deskripsi

# penduduk.dki.transform              Artinya data frame mengambil kolom ke …

# […]                                 Simbol karakter untuk index

# c("RENTANG.UMUR", "JENIS.KELAMIN")  Vector yang berisi nama-nama variable baru

 

# Dan perintah ketiga adalah menghilangkan kolom DEMOGRAFIK dari data frame sebagai berikut.

# penduduk.dki.transform$DEMOGRAFIK <- NULL
# Dengan memasukkan NULL maka kolom akan DEMOGRAFIK akan dihilangkan dari data.frame penduduk.dki.transform.

# Tugas Praktek

# Ganti bagian […1…] pada code editor dengan perintah untuk memecah isi dari field "DEMOGRAFIK" menjadi "RENTANG.UMUR" dan "JENIS.KELAMIN". Tanda pemisah adalah tanda titik.

# Kemudian ganti […2…] dengan penambahan kolom "RENTANG.UMUR" dan "JENIS.KELAMIN" data.frame penduduk.dki.xlsx.

# Terakhir, ganti […3…] dengan kolom "DEMOGRAFIK" dari variable penduduk.dki.transform.