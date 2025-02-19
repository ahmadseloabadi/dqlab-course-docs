library(ggplot2)
#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
# Tampilkan data frame dari kolom " NAMA.KELURAHAN " dan "LUAS.WILAYAH..KM2."
penduduk.dki[c("NAMA.KELURAHAN","LUAS.WILAYAH..KM2.")]


# Teori
# Perhatikan jika nama kolom asal terdapat karakter yang bukan angka atau huruf, akan diubah menjadi tanda titik setelah dibaca dengan read.csv.

# Sebagai contoh, "NAMA PROVINSI" diubah menjadi "NAMA.PROVINSI", "LUAS WILAYAH (KM2)" diubah menjadi "LUAS.WILAYAH..KM2.".

# Catatan: Walaupun nama kolom ini terlihat tidak standar dan tidak menyenangkan, kita akan biarkan nama kolom tetap seperti ini tanpa melakukan proses cleansing. Tetapi pada saat plotting, seperti telah ditunjukkan pada bab sebelumnya, kita bisa memberi label text sesuai keinginan kita. Disitulah kesempatan kita untuk merapikan tampilan teks dari kolom.

# Jika kita hanya ingin menampilkan beberapa kolom tertentu, misalkan untuk kolom "NAMA.KECAMATAN" dan "NAMA.KELURAHAN" maka perintahnya adalah sebagai berikut.

# penduduk.dki[c("NAMA.KECAMATAN","NAMA.KELURAHAN")]
# maka akan muncul hasil sebanyak 267 baris data, dimana sebagian datanya terlihat sebagai berikut:

#        NAMA.KECAMATAN         NAMA.KELURAHAN
# 1     KEP. SERIBU UTR            P. PANGGANG
# 2     KEP. SERIBU UTR              P. KELAPA
# 3     KEP. SERIBU UTR             P. HARAPAN
# 4     KEP. SERIBU SLT         P. UNTUNG JAWA
# 5     KEP. SERIBU SLT              P. TIDUNG
# 6     KEP. SERIBU SLT                P. PARI
# 7              GAMBIR                 GAMBIR
# 8              GAMBIR                 CIDENG
# 9              GAMBIR           PETOJO UTARA
# 10             GAMBIR         PETOJO SELATAN
# 11             GAMBIR           KEBON KELAPA
# 12             GAMBIR              DURI PULO
# 13        SAWAH BESAR             PASAR BARU
# 14        SAWAH BESAR           KARANG ANYAR
# 15        SAWAH BESAR                KARTINI
# 16        SAWAH BESAR    GUNUNG SAHARI UTARA
# 17        SAWAH BESAR     MANGGA DUA SELATAN
# 18          KEMAYORAN              KEMAYORAN
# 19          KEMAYORAN           KEBON KOSONG
# …
 

# Tugas Praktek

# Lengkapi bagian […] pada code editor untuk menampilkan data frame dengan kolom "NAMA.KELURAHAN" dan "LUAS.WILAYAH..KM2.".