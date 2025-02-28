library(dplyr)
library(lubridate)
library(tidyr)

df_register_per_investor <- df_event %>%
  filter(nama_event == 'investor_register') %>% 
  rename(tanggal_register = created_at) %>%  
  mutate(bulan_register = floor_date(tanggal_register, 'month'))  %>%  
  select(investor_id, tanggal_register, bulan_register) 

df_pertama_invest_per_investor <- df_event %>%
  filter(nama_event == 'investor_pay_loan') %>% 
  group_by(investor_id) %>% 
  summarise(pertama_invest = min(created_at)) 

df_register_per_investor %>% 
  left_join(df_pertama_invest_per_investor, by = 'investor_id') %>% 
  mutate(lama_invest = as.numeric(difftime(pertama_invest, tanggal_register, units = "day")) %/% 30) %>%  
  group_by(bulan_register, lama_invest) %>% 
  summarise(investor_per_bulan = n_distinct(investor_id)) %>% 
  group_by(bulan_register) %>% 
  mutate(register = sum(investor_per_bulan)) %>% 
  filter(!is.na(lama_invest)) %>% 
  mutate(invest = sum(investor_per_bulan)) %>% 
  mutate(persen_invest = scales::percent(invest/register)) %>% 
  mutate(breakdown_persen_invest = scales::percent(investor_per_bulan/invest)) %>%  
  select(-investor_per_bulan) %>%  
  spread(lama_invest, breakdown_persen_invest)

# Tugas
# Pada sebelumnya sudah dihitung bagaimana tren investor baru invest setiap minggunya. Selanjutnya akan dilihat conversion invest berdasarkan bulan register.

# Step pertama membuat tanggal register per investor, df_register_per_investor,
# Buat 2 kolom baru, tanggal_register yang merupakan rename dari created_at, dan bulan_register yang merupakan floor_date dari tanggal_register, terakhir pilih kolom investor_id, dan 2 kolom yang baru dibuat

# Step kedua adalah membuat tanggal investasi pertama per investor, simpan sebagai df_pertama_invest_per_investor
# Caranya seperti pada bagian sebelumnya, hanya saja ini berhenti ketika mendapatkan nilai pertama_invest.

# Step selanjutnya adalah menggabungkan kedua data.frame tersebut dan memproses nya.

# Untuk menggabungkan, gunakan left_join karena ada investor yang tidak invest. Lalu hitung lama_invest dalam bulan, dengan rumus

# lama_invest = as.numeric(difftime(pertama_invest, tanggal_register, units = "day")) %/% 30
# difftime satuan terbesarnya minggu (weeks), tidak bisa untuk menghitung selish bulan, jadi hitung selisih hari lalu di-div (dibagi dan dibulatkan kebawah) 30.

# Lalu kelompokkan berdasarkan bulan_register dan lama_invest untuk menghitung investor_per_bulan yakni distinct investor per kategori itu. Untuk investor yang belum pernah invest, tetap masuk dalam perhitungan dengan lama_invest yang kosong.

# Lalu group by bulan_register untuk menghitung total investor dalam bulan register itu.

# Lalu lama_invest yang kosong dihilangkan untuk menghilangkan investor yang belum pernah invest. setelah itu dihitung lagi totalnya, karena yang belum invest sudah dihilangkan, jadi yang bersisa hanya yang sudah invest, sehingga hasilnya adalah total investor yang sudah invest.

# Hitung persen_invest dan breakdown_persen_invest untuk nanti ditampilkan dalam value cohort.

# Setelah itu hilangkan kolom investor_per_bulan karena tidak dipakai. kalau tidak dihilangkan akan membuat spread tidak sesuai.

# Terakhir spread datanya berdasarkan lama_invest sebagai key dan breakdown_persen_invest sebagai value dari masing-masing key.

# penjelasan
# Terihat bahwa untuk total register paling banyak adalah di bulan Maret 2020, seperti pada chart sebelumnya, hanya saja dari sebanyak itu sampai saat ini belum ada 2% yang sudah invest, sangat jauh dibandingkan bulan sebelumnya, yang bisa mencapai 7% lebih. yang merupakan conversion rate paling tinggi.

# Pada umumnya, hanya 5% investor dari semua investor yang mendaftar akan convert. Dan ketike convert mayoritas mereka melakukannya di bulan pertama (kurang dari 30 hari) sejak registrasi.