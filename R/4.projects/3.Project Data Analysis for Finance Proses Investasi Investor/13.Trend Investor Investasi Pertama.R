library(dplyr)
library(lubridate)
library(ggplot2)

df_investor_pertama_invest <- df_event %>% 
  filter(nama_event == 'investor_pay_loan') %>%
  group_by(investor_id) %>% 
  summarise(pertama_invest = min(created_at)) %>% 
  mutate(tanggal = floor_date(pertama_invest, 'week')) %>% 
  group_by(tanggal) %>% 
  summarise(investor = n_distinct(investor_id)) 

ggplot(df_investor_pertama_invest) +
  geom_line(aes(x = tanggal, y = investor)) +
  theme_bw() + 
  labs(title = "Ada tren kenaikan jumlah investor invest, namun turun drastis mulai Maret 2020",
       x = "Tanggal",
       y = "Investor Pertama Invest")

# Tugas
# Setelah mendaftar, tujuan selanjutnya untuk investor adalah agar dia bisa invest. Hal ini biasa disebut conversion, yakni ketika user convert menjadi user yang kita harapkan, atau naik ke funnel yang lebih baik.

# Untuk mencari tahu kapan investor convert, perlu dicari kapan investor pertama kali invest dan dibuat tren nya.

# Dari data.frame df_event filter nama event ‘investor_pay_loan’, cari tanggal pertama untuk masing - masing investor, simpan sebagai pertama_invest. Dari pertama_invest ini baru diproses seperti sebelum-sebelumnya untuk dhihitung jumlah investor pertama invest setiap minggunya.

# Simpan hasilnya sebagai df_investor_pertama_invest.

# Langsung dibuat plotnya menggunakan package ggplot2 yang berisi tren line dari persen_bayar berdasarkan tanggal, berikan label,
# title : "Ada tren kenaikan jumlah investor invest, namun turun drastis mulai Maret 2020"
# x : "Tanggal"
# y : "Investor Pertama Invest"