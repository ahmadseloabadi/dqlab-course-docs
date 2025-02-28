library(dplyr)
library(lubridate)
library(tidyr)

df_investasi_per_investor <- df_event %>%
  filter(nama_event == 'investor_pay_loan') %>%
  rename(tanggal_invest = created_at) %>%
  select(investor_id, tanggal_invest)

df_pertama_invest_per_investor %>%
  mutate(bulan_pertama_invest = floor_date(pertama_invest, 'month')) %>%
  inner_join(df_investasi_per_investor, by = 'investor_id') %>%
  mutate(jarak_invest = as.numeric(difftime(tanggal_invest, pertama_invest, units = "day")) %/% 30) %>%
  group_by(bulan_pertama_invest, jarak_invest) %>%
  summarise(investor_per_bulan = n_distinct(investor_id)) %>%
  group_by(bulan_pertama_invest) %>%
  mutate(investor = max(investor_per_bulan)) %>%
  mutate(breakdown_persen_invest = scales::percent(investor_per_bulan/investor)) %>%
  select(-investor_per_bulan) %>%
  spread(jarak_invest, breakdown_persen_invest) %>%
  select(-`0`)

# Tugas
# Setelah cohort investasi pertama, selanjutnya yang dihitung adalah cohort retention. Yakni apakah investor kembali invest lagi di bulan bulan selanjutnya setelah investasi pertama.

# Step pertama membuat tanggal investasi per investor, df_investasi_per_investor, dari df_event filter event yang menggambarkan kejadian investasi, lalu 1 kolom baru, tanggal_invest yang merupakan rename dari created_at, lalu pilih kolom investor_id, dan kolom yang baru dibuat

# Step selanjutnya adalah menggabungkan data.frame df_pertama_invest_per_investor yang dibuat pada bagian sebelumnya, dengan data.frame yang baru saja dibuat. Untuk menggabungkan, bisa gunakan left_join maupun inner_join karena data investor pada keduanya adalah sama.

# Lalu hitung jarak_invest dalam bulan, dengan rumus

# jarak_invest = as.numeric(difftime(tanggal_invest, pertama_invest, units = "day")) %/% 30
# lalu kelompokkan berdasarkan bulan_pertama_invest dan jarak_invest untuk menghitung investor_per_bulan yakni distinct investor_id per kategori itu.

# lalu group by bulan_pertama_invest saja untuk menghitung berapa total investor sebenarnya.
# Disini tidak ditotal seperti pada perhitungan sebelumnya, karena jumlah investor bisa berulang pada bulan yang berbeda, jadi kalau ditotal hasilnya jauh lebih besar dari seharusnya, jadi  gunakan fungsi max untuk mencari angka tertinggi pada cohort bulan_pertama_invest itu. ini ada di jarak_invest ke 0, karena semua investor yang invest tentu saja semuanya investasinya di bulan pertama invest.

# Hitung breakdown_persen_invest untuk sebagai value yang dilihat pada persebaran jarak invest dari investasi pertama.

# Setelah itu hilangkan kolom investor_per_bulan karena tidak dipakai, kalau tidak dihilangkan akan membuat spread tidak sesuai.

# Lalu spread datanya berdasarkan jarak_invest sebagai key dan breakdown_persen_invest sebagai value dari masing-masing key.

# Terakhir hilangkan kolom 0 karena hasilnya pasti 100% semua.


# penjelasan
# Terihat bahwa pada bulan febuari terdapat investor yang melakukan investasi pertama paling banyak dibandingkan bulan lainnya. Akan tetapi kelompok tersebut retention nya jelak dibandingkan yang lain. pada 1 bulan setelah investasi pertama, hanya 16% investor saja yang investasi lagi. Ini hanya setengah dari tren pada bulan bulan sebelumnya, dimana sekitar 30% investor akan invest lagi 1 bulan setelah investasi pertama.

# cohort yang paling stabil adalah di bulan Agustus 2019. Di sekitar angka 20% setiap bulannya, alaupun pada bulan ketujuh persentasnya ikut turun juga.

# Kesimpulan
# Berdasarkan semua analisis yang telah dilakukan, dapat disimpulkan bahwa :

# Secara umum, DQLab Finance sebenarnya sedang dalam growth yang positif, fluktuatif naik turun terjadi karena perbedaan behaviour di tanggal tertentu, yang dipengaruhi oleh hal lain, misalnya gajian.
# Pada bulan Maret, April sampai pertangah Mei terjadi banyak penurunan pada metriks yang dianalisis, hal ini mungkin karena adanya pandemi Covid19, perlu dianalisis lebih lanjut apakah memang karena itu.
# Secara Umum, 5% dari total investor yang register setiap bulannya, akan melakukan investasi, dan mayoritas dilakukan pada 30 hari pertama setelah register, dan sebagian kecil di bulan kedua. Di bulan selanjutnya peluangnya sangat kecil untuk bisa convert. Sehingga perlu dipastikan bagaimana journey investor tersebut lancar di bulan pertama, sehingga mau convert invest di DQLab Finance.
# Selenjutnya perlu dilihat juga setelah invest pertama itu invest lagi di bulan bulan selanjutnya. Secara umum 30% investor akan invest lagi pada bulan berikutnya.
# Pada bulan Febuari, conversion rate nya bagus, paling tinggi yakni 7.57%, secara jumlah juga paling banyak, tapi ketika dilihat retentionnya, hanya 16% yang invest pada bulan selanjutnya, hanya setengahnya dari kategori bulan bulan lainnya.
# Perlu dianalisis lebih lanjut darimana dan profil dari investor di bulan Febuari sampai April 2020.
