library(ggplot2)
ggplot(data = cov_jabar_akumulasi, aes(x = tanggal, y = akumulasi_aktif)) +
  geom_line()

# Teori
# Sekarang cobalah Anda buat line-chart pola kasus aktif dengan menggunakan fungsi geom_line(). Sebagai pengingat, Anda dapat menggunakan templat kode berikut untuk membuat grafik menggunakan ggplot2():

# ggplot(data = ..., aes(x = ..., y = ...)) +
#   geom_xxx()