library(ggplot2)
library(hrbrthemes)
ggplot(new_cov_jabar, aes(tanggal, kasus_baru)) +
	  geom_col(fill = "salmon") +
  labs(
    x = NULL,
    y = "Jumlah kasus",
    title = "Kasus Harian Positif COVID-19 di Jawa Barat",
    subtitle = "Terjadi pelonjakan kasus di awal bulan Juli akibat klaster Secapa AD Bandung",
    caption = "Sumber data: covid.19.go.id"
  ) +
  theme_ipsum(
    base_size = 13,
    plot_title_size = 21,
    grid = "Y",
    ticks = TRUE
  ) +
  theme(plot.title.position = "plot")

