import requests
resp = requests.get('https://storage.googleapis.com/dqlab-dataset/update.json', verify=False)
cov_id_raw = resp.json()
cov_id_update = cov_id_raw['update']

print('Tanggal pembaharuan data penambahan kasus :', cov_id_update['penambahan']['tanggal'])
print('Jumlah penambahan kasus sembuh :', cov_id_update['penambahan']['jumlah_sembuh'])
print('Jumlah penambahan kasus meninggal :', cov_id_update['penambahan']['jumlah_meninggal'])
print('Jumlah total kasus positif hingga saat ini :', cov_id_update['total']['jumlah_positif'])
print('Jumlah total kasus meninggal hingga saat ini:', cov_id_update['total']['jumlah_meninggal'])


# Tugas
# Sekarang Anda diminta untuk fokus pada obyek cov_id_update untuk menjawab pertanyaan-pertanyaan berikut:

# Kapan tanggal pembaharuan data penambahan kasus?
# Berapa jumlah penambahan kasus sembuh?
# Berapa jumlah penambahan kasus meninggal?
# Berapa jumlah total kasus positif hingga saat ini?
# Berapa jumlah total kasus meninggal hingga saat ini?