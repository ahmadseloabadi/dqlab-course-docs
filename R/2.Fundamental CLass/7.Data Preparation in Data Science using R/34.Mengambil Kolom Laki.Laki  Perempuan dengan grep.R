library(openxlsx)
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
#Tampilkan nama-nama kolom yang mengandung kata "perempuan".
pola_nama_perempuan <- grep(pattern="perempuan", x = names(penduduk.dki.xlsx), ignore.case=TRUE)
names(penduduk.dki.xlsx[pola_nama_perempuan])

#Tampilkan nama-nama kolom yang mengandung kata "laki-laki"
pola_nama_laki_laki <- grep(pattern="laki-laki", x = names(penduduk.dki.xlsx), ignore.case=TRUE)
names(penduduk.dki.xlsx[pola_nama_laki_laki])


# Teori
# Dengan ada pola nama seperti itu, kita bisa mengambil dengan function grep dengan syntax berikut.

# grep(pattern="pola", x = vector, ignore.case=TRUE)
# Pola teks yang digunakan oleh grep adalah menggunakan regular expression (regex). Regex sendiri adalah konstruksi pola yang sangat komplit untuk mengolah teks, namun untuk case kita gunakan teks sederhana saja sebagai berikut:

# "laki-laki": untuk mengambil pola kolom yang mengandung teks Laki-Laki.
# "perempuan": untuk mengambil pola kolom yang mengandung teks "Perempuan".
# "(perempuan|laki-laki)": untuk mengambil pola kolom yang mengandung teks "Perempuan" ataupun "Laki-Laki".
# Argumen x dimana kita memasukkan vector. Dan ignore.case = TRUE menyatakan bahwa pola yang kita tidak bersifat case sensitive – artinya huruf besar tidak dibedakan dari huruf kecil.

# Function grep ini akan mengembalikan posisi-posisi indeks dari vector yang ditemukan polanya.

# Sebagai contoh, untuk mengambil kolom yang mengandung "Perempuan" pada nama-nama kolom dari dataset kependudukan kita gunakan perintah berikut:

# grep(pattern="perempuan", x = names(penduduk.dki.xlsx), ignore.case=TRUE)

# Ini akan menghasilkan vector berikut.

# [1]  9 11 13 15 17 19 21 23 25
# Yang merupakan daftar posisi dari nama kolom yang mengandung teks "perempuan".

# Tugas Praktek

# Ganti bagian […1…] dengan function grep menampilkan nama-nama kolom yang mengandung kata "perempuan" - seluruhnya menggunakan huruf kecil.

# Kemudian pada bagian […2…] tampilkan data-data dari nama-nama kolom yang mengandung kata "laki-laki" - seluruhnya menggunakan huruf kecil..