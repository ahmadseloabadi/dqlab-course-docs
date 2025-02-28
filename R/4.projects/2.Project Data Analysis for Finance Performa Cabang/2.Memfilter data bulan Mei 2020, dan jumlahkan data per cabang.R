library(dplyr)
df_loan_mei <- df_loan %>% 
  filter(tanggal_cair >=  '2020-05-01', 
         tanggal_cair <= '2020-05-31') %>% 
  group_by(cabang) %>% 
  summarise(total_amount = sum(amount)) 
df_loan_mei

# Tugas
# Untuk melihat data bulan Mei 2020, gunakan fungsi filter untuk memfilter data df_loan untuk tanggal dari awal mei '2020-05-01' sampai dengan akhir mei '2020-05-31'.
# Lalu hitung total_amount untuk masing - masing cabang menggunakan group_by dan summarise kemudian simpan hasilnya menjadi df_loan_mei.

# Jangan lupa load package dplyr dengan cara,

# library(dplyr)
# Lalu gunakan pipe %>% untuk menyambungkan fungsi.