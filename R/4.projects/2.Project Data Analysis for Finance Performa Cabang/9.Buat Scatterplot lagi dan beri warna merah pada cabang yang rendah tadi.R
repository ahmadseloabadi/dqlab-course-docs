library(ggplot2)

ggplot(df_loan_mei_flag, aes(x = umur, y = total_amount)) +
  geom_point(aes(color = flag)) +
  scale_color_manual(breaks = c("baik", "rendah"),
                     values = c("blue", "red")) +
  scale_y_continuous(labels = scales::comma) +
  labs(title = "Ada cabang berpeforma rendah padahal tidak termasuk bottom 5 nasional",
       color = "",
       x = "Umur (bulan)",
       y = "Total Amount")

# Tugas
# Untuk memperjelas bagaimana performa cabang yang rendah ini, plot lagi seperti sebelumnya. Sekarang menggunakan data yang baru, yakni df_loan_mei_flag.
# Lalu beri warna biru untuk cabang dengan flag 'baik' dan merah untuk yang 'rendah'.