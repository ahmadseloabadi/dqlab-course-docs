library(httr)
set_config(config(ssl_verifypeer = 0L))
resp <- GET("https://storage.googleapis.com/dqlab-dataset/update.json")
status_code (resp)

# Teori
# Ada beberapa jenis status code yang umumnya dijumpai, antara lain:

# 200 Artinya permintaan sukses dipenuhi.
# 404 Artinya berkas yang diminta tidak dapat ditemukan.
# 403 Artinya akses permintaan ditolak.
# 500 Artinya terjadi kesalahan pada server.
# Informasi lengkap mengenai jenis-jenis status code dapat diakses melalui :

# https://restfulapi.net/http-status-codes/

# Anda dapat menggunakan fungsi status_code() untuk mengetahui status atas permintaan Anda melalui API.