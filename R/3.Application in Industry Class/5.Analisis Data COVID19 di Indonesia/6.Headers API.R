library(httr)
set_config(config(ssl_verifypeer = 0L))
resp <- GET("https://storage.googleapis.com/dqlab-dataset/update.json")

headers(resp)

# Teori
# Selamat status permintaan Anda melalui API sukses dipenuhi! Sekarang cobalah Anda jalankan fungsi headers() pada resp untuk mengetahui metadata apa saja yang tersimpan. Apakah isi dari elemen content-type? Kapan terakhir kali informasi diperbaharui?

