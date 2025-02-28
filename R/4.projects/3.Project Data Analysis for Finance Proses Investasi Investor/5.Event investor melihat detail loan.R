library(dplyr)
df_view_loan <- df_event %>% 
  filter(nama_event == 'investor_view_loan') %>% 
  group_by(loan_id, investor_id) %>% 
  summarise(jumlah_view = n(), 
            pertama_view = min(created_at), 
            terakhir_view = max(created_at))
df_view_loan

# Tugas
# Untuk event investor melihat detail loan, karena investor bisa melihat detail loan berkali kali maka akan diproses terpisah untuk membuat summary per loan per investor

# Dari data.frame df_event, filter nama event investor_view_loan kelompokkan per loan_id dan investor_id, hitung dengan summarise,
# - jumlah_view : untuh tahu 1 investor view berapa kali loan tersebut,
# - pertama_view : untuk tahu kapan investor pertama kali melihat detail dari loan tersebut,
# - terakhir_view : untuk tahu kapan investor pertama kali melihat detail dari loan tersebut, nilainya bisa sama dengan pertama_view jika Lalu simpan hasilnya sebagai data.frame baru df_view_loan .

# Terakhir tampilkan df_view_loan.