library(dplyr)
library(scales)
df_loan %>% 
  filter(cabang == 'AH') %>% 
  filter(tanggal_cair >= '2020-05-01', tanggal_cair <= '2020-05-31') %>% 
  group_by(cabang, agen) %>% 
  summarise(jumlah_hari = n_distinct(tanggal_cair),
            total_loan_cair = n_distinct(loan_id),
            avg_amount = mean(amount), 
            total_amount = sum(amount)) %>% 
  arrange(total_amount) %>% 
  mutate_if(is.numeric, funs(comma))

# Tugas
# Pada tabel sebelumnya, terlihat pula bahwa ada cabang yang punya 3 agen, tapi performa nya jauh diatas cabang AE, bahkan yang paling tinggil diantara cabang lain pada umur tersebut, lebih tinggi dari yang mempunya 4 agen cabang tersebut adalah cabang AH.

# Dengan cara yang hampir sama, akan dilihat bagaimana performa masing-masing agen dari cabang AH tersebut. Hanya saja untuk ini bisa langsung pakai data df_loan lalu filter nama cabang nya saja.