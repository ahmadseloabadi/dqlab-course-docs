import pandas as pd
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t") 

# Menampilkan informasi data  
df.info() 


# Tugas
# Selanjutnya kamu perlu melihat informasi dari data yang ada. Sehingga dengan kamu bisa mengetahui jumlah baris dan kolom, nama kolom, identifikasi null values,  dan juga mengetahui tipe data dengan mudah.

# Tugas:

# Gunakan fungsi info() dari pandas untuk melihat informasi dari data kita.

# Kesimpulan
# Setelah melakukan pemanggilan data dan melihat informasi data yang kamu miliki, kamu akhirnya mengetahui bahwa:

# Data yang akan digunakan terdiri dari 50 baris dan 7 kolom
# Tidak ada nilai null pada data
# Dua kolom memiliki tipe data numeric dan lima data bertipe string
# Tips:

# Dalam setiap project machine learning, kita harus memahami informasi dasar dari data yang kita miliki sebelum melakukan analisa lebih lanjut. Dengan melakukan hal ini, kita bisa memastikan tipe data dari masing-masing kolom sudah benar, mengetahui apakah ada data null di tiap tiap kolom, dan juga mengetahui nama-nama kolom di dataset yang kita gunakan. Informasi ini nantinya akan menentukan proses apa yang perlu kita lakukan selanjutnya.