library(dplyr)
library(scales)
df_loan_mei_flag %>% 
  filter(umur == 3) %>% 
  inner_join(df_loan, by = 'cabang') %>% 
  filter(tanggal_cair >= '2020-05-01', tanggal_cair <= '2020-05-31') %>% 
  group_by(cabang, flag)  %>% 
  summarise(jumlah_hari = n_distinct(tanggal_cair),
            agen_aktif = n_distinct(agen),
            total_loan_cair = n_distinct(loan_id),
            avg_amount = mean(amount), 
            total_amount = sum(amount)) %>% 
  arrange(total_amount) %>% 
  mutate_if(is.numeric, funs(comma))

# Tugas
# Selanjutnya akan dianalisis lebih lanjut kenapa cabang itu bisa performanya rendah di mei

# Untuk kali ini akan dilihat hanya untuk yang umur 3 bulan saja, dilihat detail performa pada bulan mei dengan mengihitung,
# - jumlah hari pencairan dalam 1 bulan,
# - jumlah agen yang aktif,
# - total loan yang cair,
# - rata - rata amount cair per loan.

# dan ubah kolom numeric menjadi comma dengan fungsi mutate_if

# Jangan lupa gunakan pipe %>% untuk menyambungkan fungsi.