# Gunakan kutip dua untuk setiap string
# Import numpy sebagai aliasnya np
# dan import stats dari scipy
import numpy as np
from scipy import stats

# Baca data survei_tinggi_badan.txt dengan numpy loadtxt
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)
# Tentukan statistik deskriptif tinggi badan 
desc_stat = stats.describe (tinggi_badan)
print("Statistik deskriptif tinggi badan:\n", desc_stat)

# Teori
# scipy.stats.describe(a, axis=0, ddof=1, bias=True, nan_policy=’propagate’)

# dengan parameter

# a:dapat bertipe array (numpy.ndarray) atau list yang akan ditentukan statistik deskriptifnya.

# axis:dapat bertipe int atau None, sumbu di mana statistik deskriptifnya dihitung, 0 adalah nilai default untuk tipe data int.

# ddof:int, delta derajat kebebasan (untuk perhitungan varians), 1 adalah nilai default-nya.

# bias:bertipe bool, jika False perhitungan skewness dan kurtosis akan dikoreksi karena bias statistik, True adalah nilai default-nya.

# nan_policy:str, digunakan untuk menangani array a yang mengandung nan. Pilihannya adalah "propagate" (mengembalikan nan), "raise" (mengembalikan error), "omit" (melakukan perhitungan dengan mengabaikan nan). "propagate" adalah nilai default-nya.


# Note: Penggunaan scipy.stats.describe() cukup panjang, namu kita dapat menggunakannya melalui stats.describe() saja. 