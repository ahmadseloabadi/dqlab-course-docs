library(httr)
set_config(config(ssl_verifypeer = 0L))
resp <- GET("https://storage.googleapis.com/dqlab-dataset/update.json")

resp$status_code 
identical(resp$status_code, status_code(resp))

# Teori
# Selain menggunakan fungsi status_code(), Anda juga dapat mengetahui status permintaan dengan cara mengakses elemen dari resp. Status code tersebut tersedia dengan nama status_code dan dapat diakses dengan menggunakan operator $ pada obyek resp. Cobalah kembali akses status code dengan cara tersebut dan bandingkan hasilnya dengan cara pertama!

