library(dplyr)

df_marketplace <- df_event %>% 
  filter(nama_event == 'loan_to_marketplace') %>% 						
  select(loan_id, marketplace = created_at) 
df_marketplace

# Tugas
# Untuk event loan di-upload ke marketplace karena tidak ada investor_id nya, maka bisa diproses sendiri. Untuk memisahkannya, cukup filter nama event ‘loan_to_marketplace’, lalu ubah nama created_at sebagai marketplace.

# Dari data.frame df_event, filter nama event loan_to_marketplace pilih kolom apa saja yang mau diambil, yakni loan_id dan marketplace (ubah nama dari created_at, lakukan saat select). lalu simpan hasilnya sebagai data.frame baru df_marketplace .

# Terakhir tampilkan df_marketplace.