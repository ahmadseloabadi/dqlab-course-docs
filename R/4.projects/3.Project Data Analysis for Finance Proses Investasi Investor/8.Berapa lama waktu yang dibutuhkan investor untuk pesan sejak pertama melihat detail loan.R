library(dplyr)
library(tidyr)
df_loan_invest %>%
  filter(!is.na(order)) %>%
  mutate(lama_order_view = as.numeric(difftime(order, pertama_view, units = "mins"))) %>% 
  group_by(jumlah_view) %>% 
  summarise_at(vars(lama_order_view), funs(total = n(), min, median, mean, max)) %>% 
  mutate_if(is.numeric, funs(round(.,2)))

# Tugas
# Pada tahap ini, akan dilihat persebaran lama waktu dari pertama melihat detail loan sampai memutuskan untuk order

# dengan menggunakan data.frame df_loan_invest, filter hanya yang order (tidak kosong) lalu hitung lama_order_view, dengan rumus,

# lama_order_view = as.numeric(difftime(order, pertama_view, units = "mins"))
# difftime ini merupakan fungsi bawaan (package base) yang digunakan untuk menghitung selisih antara 2 waktu, disini digunakan units “mins” yang berarti output ditampilkan dalam satuan menit.
# lalu kelompokkan berdasarkan jumlah_view untuk menghitung summary (jumlah transaksi, min, median, mean dan max) dari kolom lama_order_view. Format hasilnya dengan pembulatan 2 digit dibelakang koma agar angkanya seragam, mudah dilihat.

# penjelasan
# Ternyata mayoritas investor langsung memesan loan ketika membuka detailnya, yakni dibawah 5 menit untuk investor yang melihat detail loan 1 kali saja lalu pesan. Untuk yang membuka 2-4 kali waktunya berkisar 30 menitan. Pada jumlah_view 2 dan 3, karena ada outlier pesan lama sampai jauh dari median, ini membuat nilai rata-ratanya terpengaruh menjadi tinggi, 1 jam lebih.

