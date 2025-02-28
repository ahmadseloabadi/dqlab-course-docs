library(dplyr) 
df_loan_mei_umur <- df_cabang_umur %>% 
  inner_join(df_loan_mei, by = 'cabang') 
df_loan_mei_umur


# Tugas
# Selanjutnya untuk membandingkan data umur dan performa di bulan mei, terlebih dahulu perlu digabungkan dulu data-data yang sudah dibuat sebelumnya dengan menggunakan fungsi inner_join, lalu simpan sebagai df_loan_mei_umur.

# Jangan lupa gunakan pipe %>% untuk menyambungkan fungsi.