import requests
resp = requests.get('https://storage.googleapis.com/dqlab-dataset/update.json', verify=False)

cov_id_raw  = resp.json()


# Tugas
# Respon API dengan status code 200 menyatakan bahwa permintaan Anda berhasil dipenuhi dan konten yang diminta tersedia untuk diekstrak. Selain itu Anda juga telah mengetahui lewat attribut headers bahwa konten yang diminta tersedia dalam bentuk application/json, yaitu berkas JSON.

# Selanjutnya Anda dapat mengekstrak konten tersebut dengan menggunakan method json(). Method json() merupakan builtin JSON decoder untuk mengekstrak content bertipe JSON. Anda juga dapat menggunakan attribut content tetapi ini berupa binary content yang perlu Anda proses kembali nantinya. Jalankan method json() pada obyek resp dan simpanlah hasilnya sebagai cov_id_raw!

# cov_id_raw ini bertipe data dict.