# Import modul random
import random

# Set seed sebagai bilangan bulat 0, dan dapat diganti
# dengan bilangan bulat lainnya, sesuai dengan instruksi Senja
random.seed(1234)

# Ambil sampel dalam rentang butir data, yaitu 1 s/d 120
# Inisialisasi sampel
sampel = []
# Looping sebanyak sampel yang ingin ditarik yaitu 10% (12 butir data)
for i in range(12): 
    sampel.append(random.randint(1, 120))
# Cetaklah sampel
print("sampel:", sampel)

#Kamu bisa menyingkat kode di baris ke-10, 12, dan 13 dengan menggunakan list comprehension seperti berikut:
#sampel = [random.randint(1,120) for i in range(12)]

# Teori
# simple random sampling atau disebut random sampling, dapat mengambil secara acak setiap anggota populasi berdasarkan nilai probabilitas tertentu. Dalam hal ini setiap anggota populasi akan memiliki kesempatan yang sama untuk dipilih yaitu berdasarkan nilai probabilitas yang telah ditentukan.

# modul random
# random.random() ditujukan untuk menghasilkan sembarang bilangan ril x dalam interval 0 ≤ x < 1.
# random.randint(a, b) untuk menghasilkan sebarang nilai bilangan bulat x dalam interval a ≤ x ≤ b, dengan a dan b adalah bilangan bulat dan harus memenuhi kondisi a < b.

# Agar bilangan random ini reproducible yaitu dapat menghasilkan nilai yang sama untuk setiap kode program dijalankan, maka dapat menggunakan random.seed

# random.seed(a=None, version=2) dengan parameter:

# a:opsional, dapat berupa None (default), int, float, str, bytes, atau bytearray, untuk 3 tipe data terakhir akan dikonversi ke int, pada version=2.

# version:digunakan saja nilai default-nya yang dimulai dari python 3.9.

