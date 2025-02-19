library(ggplot2)
#Membaca data csv dan dimasukkan ke variable inflasi.indo.sing
inflasi.indo.sing <- read.csv("https://storage.googleapis.com/dqlab-dataset/inflasi.csv", sep=",")
inflasi.indo.sing$Bulan <- factor(inflasi.indo.sing$Bulan, levels = c("Jan-2017", "Feb-2017", "Mar-2017", "Apr-2017", "May-2017", "Jun-2017", "Jul-2017", "Aug-2017", "Sep-2017", "Oct-2017"))

str(inflasi.indo.sing)

# Teori
# Urutan bulan yang salah pada praktek sebelumnya karena masalah pengurutan internal di sistem R, yang mengurutkan berdasarkan alphabet.

# Jika kita lihat internal struktur dengan function str, maka untuk kolom bulan terlihat sebagai berikut.



# Kita dapat secara manual merubah urutan ini dengan factor dan parameter levels dimasukkan manual.

# Dengan data bulan dari Jan s/d Oct 2017 maka konstruksi factor adalah sebagai berikut.

# factor(inflasi.indo.sing$Bulan, levels = c("Jan-2017", "Feb-2017", "Mar-2017", "Apr-2017", "May-2017", "Jun-2017", "Jul-2017", "Aug-2017", "Sep-2017", "Oct-2017"))
# Ini perlu dimasukkan kembali ke kolom bulan untuk merubah urutannya dengan perintah berikut.

# inflasi.indo.sing$Bulan <- factor(inflasi.indo.sing$Bulan, levels = c("Jan-2017", "Feb-2017", "Mar-2017", "Apr-2017", "May-2017", "Jun-2017", "Jul-2017", "Aug-2017", "Sep-2017", "Oct-2017"))
 

# Tugas Praktek

# Gantilah bagian […] dengan factoring