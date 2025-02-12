import requests
resp = requests.get('https://storage.googleapis.com/dqlab-dataset/update.json', verify=False)

# Tugas
# Rekapitulasi data COVID-19 Indonesia tersedia dalam API publik yang beralamat di https://storage.googleapis.com/dqlab-dataset/update.json.

# Salah satu cara untuk mengakses API adalah dengan menggunakan fungsi get() dari library requests.

# Sekarang aktifkanlah library requests dan jalankan fungsi get() pada alamat API yang telah disebutkan! Simpan hasil fungsi tersebut dalam obyek bernama resp.

# TEori
# Mengevaluasi Respon
# Saat Anda menjalankan fungsi get(), pada dasarnya hal yang terjadi adalah Anda membuat sebuah permintaan kepada server penyedia API. Permintaan Anda tersebut selanjutnya diproses dan dijawab oleh server sebagai sebuah respon. Objek resp yang telah Anda buat memiliki informasi respon oleh server.

# Ada tiga informasi utama dalam sebuah respon API, yaitu status, headers, dan body. Status memiliki informasi apakah permintaan Anda berhasil atau tidak dan dinyatakan dalam status code, headers umumnya mengandung informasi metadata, sedangkan body berisikan konten atas permintaan yang telah dibuat.