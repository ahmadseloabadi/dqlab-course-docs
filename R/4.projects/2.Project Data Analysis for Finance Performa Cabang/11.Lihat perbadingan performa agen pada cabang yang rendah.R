library(dplyr)
library(scales)
df_loan_mei_flag %>% 
  filter(umur == 3, flag == 'rendah') %>% 
  inner_join(df_loan, by = 'cabang') %>% 
  filter(tanggal_cair >= '2020-05-01', tanggal_cair <= '2020-05-31') %>% 
  group_by(cabang, agen) %>% 
  summarise(jumlah_hari = n_distinct(tanggal_cair),
            total_loan_cair = n_distinct(loan_id),
            avg_amount = mean(amount), 
            total_amount = sum(amount)) %>% 
  arrange(total_amount) %>% 
  mutate_if(is.numeric, funs(comma))

# Tugas
# Dari hasil eksplorasi sebelumnya, terlihat bahwa yang berbeda jauh hanya total_loan_cair saja.
# Jumlah hari dan jumlah agen dalam 1 bulan sama semua.

# Selanjutnya perlu dilihat bagaimana perbandingan nya per agent.

# Untuk melanjutkan tadi, dilihat untuk yang umur 3 bulan dan flag nya rendah dilihat detail performa pada bulan mei per agen dengan mengihitung,

# - jumlah hari pencairan dalam 1 bulan,
# - total loan yang cair,
# - rata - rata amount cair per loan
# - total amount cair


# dan ubah kolom numeric menjadi comma dengan fungsi mutate_if

# Jangan lupa gunakan pipe %>% untuk menyambungkan fungsi.