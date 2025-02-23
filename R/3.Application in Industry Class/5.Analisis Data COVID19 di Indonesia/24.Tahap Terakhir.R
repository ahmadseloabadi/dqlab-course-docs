library(ggplot2)
library(hrbrthemes)

ggplot(cov_jabar_akumulasi_pivot, aes(tanggal, jumlah, colour = (kategori))) +
  geom_line(size = 0.9) +
  scale_y_continuous(sec.axis = dup_axis(name = NULL)) +
  scale_colour_manual(
    values = c(
      "aktif" = "salmon",
      "meninggal" = "darkslategray4",
      "sembuh" = "olivedrab2"
    ),
    labels = c("Aktif", "Meninggal", "Sembuh")
  ) +
  labs(
    x = NULL,
    y = "Jumlah kasus akumulasi",
    colour = NULL,
    title = "Dinamika Kasus COVID-19 di Jawa Barat",
    caption = "Sumber data: covid.19.go.id"
  ) +
  theme_ipsum(
    base_size = 13,
    plot_title_size = 21,
    grid = "Y",
    ticks = TRUE
  ) +
  theme(
    plot.title = element_text(hjust = 0.5),
    legend.position = "top"
  )

# Kesimpulan dan Komentar
# Selamat Anda telah menyelesaikan proyek analisis COVID-19 ini! Anda telah berhasil melakukan impor data melalui API, melakukan transformasi data, serta membuat visualisasi untuk mengkomunikasikan hasil analisis data tentang COVID-19.

# Anda dipersilakan untuk selanjutnya mengembangkan analisis dengan cara mengambil studi kasus provinsi lain atau bahkan melakukan komparasi antar provinsi. Anda dapat menggunakan skrip dasar yang tersedia pada tautan ini untuk memulai analisis. Dengan menggunakan studi kasus provinsi pilihan Anda, dapatkah Anda menjawab dua tantangan ini:

# Apakah jumlah kasus di pekan ini lebih rendah dibandingkan pekan kemarin dan dua pekan kemarin secara berturut-turut? Buatlah visualisasinya!

# Salah satu metrik yang dapat dihitung untuk mengamati persebaran COVID-19 di masyarakat adalah ‘Seventh-Day Amplification Factor’ (silakan baca ini dan ini). Dapatkah Anda menghitung metrik tersebut?