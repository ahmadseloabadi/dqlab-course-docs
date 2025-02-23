library(dplyr)
library(lubridate)

cov_jabar_pekanan <- new_cov_jabar %>% 
  count(
    tahun = year(tanggal),
    pekan_ke = week(tanggal),
    wt = kasus_baru,
    name = "jumlah"
  )

glimpse(cov_jabar_pekanan)

# Teori
# Setelah mengamati grafik perkembangan kasus Anda menyadari bahwa terjadi fluktuasi pertambahan kasus harian. Dilandasi hal tersebut Anda kemudian ingin mencoba mengamati bagaimana perkembangan kasus dalam rentang waktu pekanan. Bagaimanakah caranya?

# Anda dapat dengan mudah bekerja dengan data tanggal apabila menggunakan paket lubridate. Adapun yang akan digunakan untuk mengekstrak informasi pekan dalam satu tahun adalah fungsi week().

# Lengkapilah baris kode berikut untuk menghitung pertambahan kasus pekanan dan simpanlah hasilnya sebagai cov_jabar_pekanan! Anda juga diminta untuk menggunakan fungsi glimpse() dari dplyr untuk melakukan inspeksi data.