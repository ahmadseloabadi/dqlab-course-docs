import requests
resp = requests.get('https://storage.googleapis.com/dqlab-dataset/update.json', verify=False)
print(resp.headers)

# Tugas
# Selamat status permintaan Anda melalui API sukses dipenuhi! Sekarang cobalah Anda jalankan attribut headers pada resp untuk mengetahui metadata apa saja yang tersimpan. Tampilkan dengan menggunakan fungsi print. 

# Apakah isi dari elemen content-type?

# Kapan terakhir kali informasi diperbaharui?