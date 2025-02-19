library(dplyr)
library(ggplot2)

tabel <- read.csv("https://storage.googleapis.com/dqlab-dataset/lo5_m01_mp01.csv") %>%
  mutate(Laki.laki = -Laki.laki) %>%
  arrange(desc(Kelompok.Usia))

plt <- ggplot(data = tabel,
       aes(x = factor(tabel$Kelompok.Usia, 
                      levels = tabel$Kelompok.Usia))) +
  geom_bar(stat = "identity", 
           width = 0.8,
           fill = "blue",
           aes(y = Laki.laki)) +
  geom_text(aes(x = Kelompok.Usia,
                y = Laki.laki + 27,
                label = abs(Laki.laki)),
            colour = "white") +
  geom_bar(stat = "identity",
           width = 0.8,
           fill = "orange",
           aes(y = Perempuan)) +
  geom_text(aes(x = Kelompok.Usia,
                y = Perempuan - 27,
                label = Perempuan),
            colour = "white") +
  ylim(-550, 550) +
  coord_flip() +
  annotate("text", x=0.5, y=-20, hjust=1,
           label="Laki-laki", colour="blue") +
  annotate("text", x=0.5, y=20, hjust=0,
           label="Perempuan", colour="orange") +
  labs(colour = "", x = "", y = "",
       title = "Perbandingan Jumlah Karyawan Laki-laki dan Perempuan\nBerdasarkan Kelompok Usia") +
  theme(axis.text = element_text(size = 12, face="bold"),
        axis.text.x = element_blank(),
        axis.ticks = element_blank(),
        plot.title = element_text(hjust = 0, size = 16),
        panel.background = element_rect(fill = "white"),
        legend.position = "bottom")

options(repr.plt.width = 10, repr.plt.height = 2)
plt

