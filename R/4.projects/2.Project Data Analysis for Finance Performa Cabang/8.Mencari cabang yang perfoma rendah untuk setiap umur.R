library(dplyr) 
library(scales) 
df_loan_mei_flag <- df_loan_mei_umur %>% 
  group_by(umur) %>% 
  mutate(Q1 = quantile(total_amount, 0.25),
         Q3 = quantile(total_amount, 0.75), 
         IQR = (Q3 - Q1)) %>% 
  mutate(flag = ifelse(total_amount < (Q1 - IQR), 'rendah', 'baik')) 

df_loan_mei_flag %>% 
  filter(flag == 'rendah') %>%
  mutate_if(is.numeric, funs(comma))

# Tugas
# Selanjutnya Untuk mencari cabang yang performanya rendah pada setiap kelompok umur, akan digunakan nilai Quartile dan Inter Quartile Range dari setiap umur.
# Dikatakan rendah jika performanya kurang dari (Q1 - IQR).
# Untuk itu perlu dicari dulu nilai Q1, Q3 dan IQR untuk setiap umur dengan menggunakan data df_loan_mei_umur. Untuk membuat variabel ini, gunakan group_by dan mutate karena variabel ini akan digunakan lagi oleh semua data.

# Setelah itu buat variabel baru flag yang akan berisi 'rendah' jika performanya kurang dari (Q1 - IQR) dan 'baik' untuk selain itu dan simpan hasilnya sebagai df_loan_mei_flag.

# Lalu filter df_loan_mei_flag hanya untuk flag rendah, agar terlihat cabang mana saja yang masuk kelompok ini, dan ubah kolom numeric menjadi comma dengan fungsi mutate_if

# Jangan lupa gunakan pipe %>% untuk menyambungkan fungsi.