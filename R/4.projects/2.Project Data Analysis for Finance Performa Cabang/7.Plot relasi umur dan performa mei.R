library(ggplot2)

ggplot(df_loan_mei_umur, aes(x = umur, y = total_amount)) +
  geom_point() +
  scale_y_continuous(labels = scales::comma) +
  labs(title = "Semakin berumur, perfoma cabang akan semakin baik",
       x = "Umur (bulan)",
       y = "Total Amount")

# Tugas
# Untuk membuat plot, akan digunakan package ggplot2 agar script yang digunakan lebih konsisten ketika nanti ada perubahan dan supaya bisa lebih bisa dicustomisasi nantinya.
# Gunakan data df_loan_mei_umur yang sudah dibuat sebelumnya.

# Pada project kali ini, tidak perlu ubah theme, silahkan bisa diperlajari lagi diluar project ini.