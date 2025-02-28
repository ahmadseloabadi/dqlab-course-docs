library(dplyr)

df_event %>%
  group_by(nama_event) %>%
  summarise(jumlah_event = n(),loan = n_distinct(loan_id),investor = n_distinct(investor_id))

# Tugas
# Karena data yang ada berbentuk log per event, maka kita perlu melihat apa saja isi dari event ini, dan bagaimana flow nya.

# Dari data.frame df_event yang sudah dibuat pada bagian sebelumnya, dikelompokkan dengan group by berdasarkan nama_event lalu hitung dengan summarise,

# - jumlah_event : untuk  mengetahui jumlah terjadinya event, atau ada berapa baris

# - loan : untuk mengetahui jumlah unik loan_id 

# - investor : untuk mengetahui jumlah unik investor_id

# Gunakan package dplyr untuk pengolahan data

# Penjelasan
# Berdasarkan hasil tersebut, ternyata ada 5 event. Dengan penjelasan sebagai berikut :

# investor_register : Event saat Investor register.
# Jumlah event sama dengan unik investor, artinya setiap investor melakukan event ini hanya 1 kali. Jumlah loan hanya 1, ini isinya NA, karena register ini tidak memerlukan loan.
# loan_to_marketplace : Event saat loan diupload ke marketplace,
# Jumlah event sama dengan jumlah loan, artinya setiap loan diupload hanya 1 kali. Jumlah investor hanya 1, ini isi NA, karena saat upload ke marketplace tidak berhubungan dengan investor

# investor_view_loan : Event saat investor melihat detail loan di marketplace.
# Jumlah event nya tidak sama dengan unik loan maupun unik investor, artinya 1 investor dapat melihat loan yang sama beebrapa kali, dan 1 loan bisa dilihat oleh beberapa investor berbeda

# investor_order_loan : Event saat investor memesan loan, menunggu pembayaran.
# Jumlah event nya tidak sama dengan unik loan maupun unik investor, artinya 1 loan bisa dipesan oleh beberapa investor berbeda (jika pemesanan sebelumnya tidak dibayar)

# investor_pay_loan : Event saat investor membayar loan dari pesanan sebelumnya.
# Jumlah Event nya sama dengan unik loan, artinya 1 loan ini hanya bisa dibayar oleh 1 investor. Jumlah investor lebih sedikit daripada jumlah loan artinya 1 investor bisa membeli banyak loan