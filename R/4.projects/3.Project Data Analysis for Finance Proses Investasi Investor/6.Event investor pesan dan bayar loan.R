library(dplyr)
library(tidyr)

df_order_pay <- df_event %>%
  filter(nama_event %in% c('investor_order_loan', 'investor_pay_loan')) %>%
  spread(nama_event, created_at) %>%
  select(loan_id,investor_id,order = investor_order_loan,pay = investor_pay_loan)
df_order_pay

# Tugas
# Lalu untuk event investor_order_loan dan investor_pay_loan, karena unik untuk kombinasi loan_id dan investor_id, maka bisa diproses bersamaan, dan akan di-spread menggunakan package tidyr

# Dari data.frame df_event, filter nama event investor_order_loan dan investor_pay_loan, Spread kolom nama_event dan created_at agar nama_event menjadi nama kolom. Untuk memudahkan ubah nama event tersebut sembari select kolom, agar urutan dan namanya sebagai berikut
# - loan_id,
# - investor_id,
# - order : investor_order_loan,
# - pay : investor_pay_loan

# Lalu simpan hasilnya sebagai data.frame baru df_order_pay .

# Terakhir tampilkan df_order_pay.