library(httr)
set_config(config(ssl_verifypeer = 0L))
resp <- GET("https://storage.googleapis.com/dqlab-dataset/update.json")
cov_id_raw <- content(resp, as = "parsed", simplifyVector = TRUE) 

# Teori
# Respon API dengan status code 200 menyatakan bahwa permintaan Anda berhasil dipenuhi dan konten yang diminta tersedia untuk diekstrak. Selain itu Anda juga telah mengetahui lewat fungsi headers() bahwa konten yang diminta tersedia dalam bentuk application/json, yaitu berkas JSON.

# Selanjutnya Anda dapat mengekstrak konten tersebut dengan menggunakan fungsi content(). Fungsi content() tersebut secara cerdas akan menyesuaikan output sesuai dengan jenis berkas yang tersedia, dalam hal ini adalah berkas JSON. Jalankan fungsi tersebut pada obyek resp dan tambahkan argumen as = "parsed" dan simplifyVector = TRUE. Simpanlah hasilnya sebagai cov_id_raw!