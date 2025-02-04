import requests
url = "https://storage.googleapis.com/dqlab-dataset/hello.txt"
response = requests.get(url)
# Cetak kode status dari response
print(response)
# Cetak isi file hello.txt menggunakan method response.iter_lines()
print("\n>> Cetak isi file hello.txt menggunakan method response.iter_lines():")
for baris in response.iter_lines():
	print(baris)

# Tugas Praktik:
# Well, aku sudah mempraktikkan membaca berkas teks secara lokal di komputer ku. Sekarang aku akan mencoba membaca berkas teks yang sama yang berada di url https://storage.googleapis.com/dqlab-dataset/hello.txt.