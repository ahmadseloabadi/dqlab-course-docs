# Import numpy sebagai aliasnya np
import numpy as np

# Set seed sebagai bilangan bulat 0, dan dapat diganti
# dengan bilangan bulat lainnya
np.random.seed(0)

# Ambil sampel dalam rentang butir data, yaitu 1 s/d 120,
# sebanyak 10% (12 butir data)
sampel = np.random.randint(1, 121, size=12)
# Cetaklah sampel
print("sampel:", sampel)

# Teori
# Numpy sebagai library standar untuk pengolahan array di python juga memiliki modul untuk menangani permasalahan bilangan acak atau random. Dapat menggunakan dua fungsi berikut di antara fungsi-fungsi lainnya, yaitu

# numpy.random.rand(d0, d1, d2, ..., dn) ditujukan untuk menghasilkan sembarang bilangan ril x dalam interval 0 ≤ x < 1. Jika parameter d0 atau d1 atau d2 atau hingga dn dispesifikasi dalam bentuk bilangan bulat positif maka akan menghasilkan bilangan acak dalam bentuk array berdimensi 1, 2, 3, …, n+1. Jika tidak dispesifikasi parameternya maka akan menghasilkan satu nilai bilangan acak ril saja. Sebagai contoh numpy.random.rand(2, 4) akan menghasilkan array denga ukuran 2 baris dan 4 kolom.
# numpy.random.randint(low, high=None, size=None, dtype=int) digunakan untuk menghasilkan sebarang nilai bilangan bulat x dalam interval low ≤ x < high, dengan low dan high adalah bilangan bulat dan memnuhi kondisi low < high. Parameter size digunakan untuk menentukan ukuran dari dimensi array bilangan acak, misal size=(3, 2) akan menghasilkan array bilangan acak berukuran 3 baris dan 2 kolom, jika size=10 akan menghasilkan array 1 dimensi yang berisi 10 butir data.
# Kembali, agar bilangan acak ini reproducible maka dapat menggunakan random.seed(seed=None) dengan parameter seed harus berupa bilangan bulat tertentu.