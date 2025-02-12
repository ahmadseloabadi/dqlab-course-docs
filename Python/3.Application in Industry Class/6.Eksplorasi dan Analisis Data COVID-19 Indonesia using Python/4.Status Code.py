import requests
resp = requests.get('https://storage.googleapis.com/dqlab-dataset/update.json', verify=False)
print(resp)

# Tugas
# Ada beberapa jenis status code yang umumnya dijumpai, antara lain:

# 200.Artinya permintaan sukses dipenuhi.
# 404.Artinya berkas yang diminta tidak dapat ditemukan.
# 500.Artinya akses permintaan ditolak.
# 501.Artinya terjadi kesalahan pada server.
# Informasi lengkap mengenai jenis-jenis status code dapat Anda pelajari di https://restfulapi.net/http-status-codes/

# Anda dapat mencetak resp secara langsung yang telah memberikan output status atas permintaan Anda melalui API. Sekarang coba lihatlah status atas permintaan yang telah Anda buat! Apakah permintaan Anda berhasil?