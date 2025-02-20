library(openxlsx)
#Membaca dataset dengan read.xlsx dan dimasukkan ke variable penduduk.dki
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
str(penduduk.dki.xlsx)



# Teori
# Jika membaca file teks berformat csv dan tsv hampir sama, maka untuk membaca file versi Excel dari dataset kependudukan tersebut kita perlu gunakan function read.xlsx dari library lain yang bernama openxlsx.

# Function ini akan membaca isi dari file Excel menjadi data.frame di R.

# Untuk praktek kita kali ini, file Excel yang akan kita baca berlokasi di url berikut:

# https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx

# Berikut adalah contoh konstruksi function read.xlsx untuk membaca file Excel tersebut.

# penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")

# penjelasan
# Terlihat perbedaan penting ketika kita membaca dengan read.xlsx dengan read.csv dan read.tsv secara default.

# Beberapa diantaranya adalah sebagai berikut:

# Karakter non karakter dan spasi seperti garis miring dan tanda kurung tetap ditampilkan apa adanya. Sedangkan jika menggunakan read.csv dan read.tsv akan diganti menjadi tanda titik.


# Seluruh kolom akan diubah menjadi vector, sedangkan pada read.csv beberapa kolom akan menjadi factor.
# Vector teks yang berulang akan tetap dibiarkan apa adanya, tidak diubah menjadi factor. Ini akan mengakibatkan beberapa masalah, salah satunya adalah pada saat plotting data – yang akan kita lihat pada praktek berikutnya.
# Kolom kosong – dimana jika kita gunakan read.csv akan diisi dengan nama X, X.1, X.2, dan seterusnya – dihilangkan oleh fungsi read.xlsx ini.

# Kesimpulan
# Anda telah menyelesaikan bab tentang membaca sumber data dengan tiga format, yaitu:

# File teks berformat comma separated value (csv)
# File teks berformat tab separated value (tsv)
# File Excel berformat xlsx
# Walaupun terlihat sederhana dan pendek dibanding bab lain, namun beberapa praktek pada bab ini memiliki metodologi dan fungsi penting yakni:

# Bagaimana kita melakukan profil dengan function str dari tiap kali pembacaan file.
# Dapat mengerti output yang dihasilkan oleh function str.
# Dengan demikian, kita menjadi aware atau lebih perhatian karena perilaku yang berbeda ketika menangani kolom kosong dan juga pada saat penamaan variable kolom.
# Dengan menguasai praktek-praktek ini, Anda akan lebih siap untuk "memperbaiki" struktur dan isi file tersebut jika diperlukan.