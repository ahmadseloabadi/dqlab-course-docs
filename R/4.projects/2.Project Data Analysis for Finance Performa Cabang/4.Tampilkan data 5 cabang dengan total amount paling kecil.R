library(dplyr)
library(scales)
df_loan_mei %>% 
  arrange(total_amount) %>% 
  mutate(total_amount = comma(total_amount)) %>% 
  head(5)


# Tugas
# Tampilkan 5 cabang terbesar dari data df_loan_mei,
# urutkan dengan fungsi arrange dari yang paling kecil tampilkan 5 data teratas menggunakan fungsi head.

# Gunakan fungsi comma dari package scales untuk menampilkan total_amount agar lebih mudah dibandingkan.

# Jangan lupa gunakan pipe %>% untuk menyambungkan fungsi.