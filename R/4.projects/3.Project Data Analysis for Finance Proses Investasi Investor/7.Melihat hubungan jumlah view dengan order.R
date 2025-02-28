library(dplyr)
library(tidyr)
df_loan_invest %>%
  mutate(status_order = ifelse(is.na(order),'not_order','order')) %>%
  count(jumlah_view, status_order) %>%
  spread(status_order, n, fill = 0) %>%
  mutate(persen_order = scales::percent(order/(order+not_order)))

# Tugas
# Pada tahap ini, akan dilihat apakah ada hubungan antara berapa kali investor melihat loan dengan keputusan order atau tidak.

# Dengan menggunakan data.frame df_loan_invest, buat status_order dengan isi ‘not_order’ jika tidak order (order kosong) dan ‘order’ untuk lainnya.
# Hitung kombinasi jumlah_view dan status_order yang baru dibuat dengan fungsi count lalu spread status_order sebagai key dengan value n yang merupakan hasil dari count, set fill = 0 agar ketika ada yang kosong diganti dengan 0.
# Terakhir hitung persen_order yang merupakan nilai order dibagi total dari order dan not_order, format dengan percent agar hasil lebih mudah dibaca

# penjelasan

# Dan ternyata tidak ada pola khusus yang menyatakan hubungan banyaknya view dengan keputusan investor memesan loan tersebut. Hampir merata bahwa lebih dari 85% investor yangs sudah melihat loan akan memesannya.

# Untuk Jumlah View 4 atau lebih, karena sangat sedikit event nya maka bisa diabaikan.