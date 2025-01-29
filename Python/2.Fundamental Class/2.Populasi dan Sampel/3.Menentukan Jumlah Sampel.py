# Import math
import math
# Jumlah anggota populasi
N = 8963 
# Proporsi
p = 0.25
# z-score
z = 1.96
# Margin of error
e = 0.05
# Perhitungan ukuran sampel, n
n_aksen = z**2 * p * (1 - p) / e**2
n = n_aksen / (1 + (n_aksen / N))
# Cetak jumlah sampel
print("Jumlah sampel:", math.ceil(n))

# Tugas
# Pimpinan perguruan tinggi A ingin mengetahui secara cepat bagaimanakah tanggapan mahasiswa terkait program kemahasiswaan yang telah didesain dan dijalankan memiliki pengaruh pada mahasiswa. Dalam hal ini perguruan tinggi A memiliki 8963 mahasiswa aktif di program sarjana yang tersebar di 16 fakultas.
# Aku membayangkan, jika aku merupakan tim pelaksana surveinya, bagaimana aku menentukan besar sampel yang harus digunakan jika diketahui proporsinya 25%, selang kepercayaan sebesar 95%, dan margin galat yang diinginkan sebsar 5%. Aku terpikirkan, untuk menyelesaikan kasus ini aku akan melakukan penarikan sampel dengan metode simple random sampling.