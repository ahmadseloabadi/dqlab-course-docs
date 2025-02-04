import requests
url = "https://storage.googleapis.com/dqlab-dataset/hello.txt"
response = requests.get(url)
# Cetak kode status dari response
print(response)
# Cetak isi file hello.txt menggunakan atribut response.text
print("\n>> Cetak isi file hello.txt menggunakan atribut response.text:")
print(response.text)

# Tugas Praktik:
# Aku menjadi penasaran dengan hasil yang telah aku dapatkan sebelumnya. Apakah ada method/attribut lain gak ya untuk mencetak isi dari berkas hello.txt di https://storage.googleapis.com/dqlab-dataset/hello.txt.

# Akupun mencoba mengunakan atribut .text dari variabel response