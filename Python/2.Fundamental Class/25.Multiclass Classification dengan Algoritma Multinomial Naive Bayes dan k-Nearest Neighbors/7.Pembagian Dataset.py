#Kode program sebelumnya
import numpy as np
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
df.drop('kode_kontrak', axis=1, inplace=True)

y = df.pop('risk_rating').to_list()
y = [4 if label == 5 else label for label in y]
y = np.array(y)

def convert_kpr_aktif(kpr_aktif):
    if kpr_aktif == 'YA':
        return 1
    return 0

df['kpr_aktif']= df['kpr_aktif'].apply(convert_kpr_aktif)

def change_overdue(overdue):
    if overdue == '0 - 30 days':
        return 0
    elif overdue == '31 - 45 days':
        return 1
    elif overdue == '46 - 60 days':
        return 2
    elif overdue == '61 - 90 days':
        return 3
    else:
        return 4

df['rata_rata_overdue'] = df['rata_rata_overdue'].apply(change_overdue)

X = df.to_numpy()

#library yang akan kita gunakan untuk membagi dataset menggunakan strategi validasi KFold
from sklearn.model_selection import KFold
 
#menginisialisasi object KFold dengan jumlah kelompok data = 5 nilai random_state kita gunakan reproducibility (agar data acak yang kita dapatkan untuk setiap kelompok data selalu sama)
kf = KFold(n_splits = 5, shuffle=True, random_state = 57)
 
#meminta object kf untuk memecah data X ke sejumlah n kelompok dan mengiterasi setiap train_index dan test_index
for i, (train_index, test_index) in enumerate(kf.split(X)):
	X_train, y_train = X[train_index], y[train_index]
	X_test, y_test = X[test_index], y[test_index]

	print("Percobaan ke-", i+1)
	print("10 indeks data latih pertama:", train_index[:10])
	print("10 indeks data testing pertama:", test_index[:10])
	print("============================================================")


# Teori
# Strategi K-Fold bekerja dengan membagi data ke sejumlah K kelompok, dalam ilustrasi di atas nilai K sama dengan lima (5) sehingga data dibagi ke dalam 5 kelompok. Kemudian, berdasarkan proses pembagian data, akan dilakukan proses percobaan pelatihan dan evaluasi model dengan menggunakan satu kelompok data sebagai data testing dan kelompok data lainnya sebagai data training. Proses tersebut akan dilakukan terus menerus hingga seluruh kelompok data kebagian menjadi data testing. 

# Strategi K Fold dapat memanfaatkan seluruh data yang dimiliki  sebagai data uji dan mengetahui nilai performa model yang lebih representatif (tidak bias terhadap suatu konfigurasi pemilihan data testing dan training).

# Penjelasan
# Kemudian,berdasarkan 10 indeks data latih dan data testing pertama pada setiap iterasi, indeks yang telah muncul sebagai data latih tidak akan muncul sebagai indeks pada data testing. Selain itu, data latih dan data testing yang digunakan pada setiap percobaan selalu memiliki perbedaan.

