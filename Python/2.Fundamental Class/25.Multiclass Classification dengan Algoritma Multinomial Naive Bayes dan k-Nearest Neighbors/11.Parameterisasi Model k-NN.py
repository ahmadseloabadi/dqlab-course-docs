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
	
#library yang digunakan untuk menghitung akurasi
from sklearn.metrics import accuracy_score
 
#library yang digunakan untuk menggunakan model k-NN
from sklearn.neighbors import KNeighborsClassifier
 
#library yang digunakan untuk mencari parameterisasi 
#model dengan strategi validasi KFold
from sklearn.model_selection import GridSearchCV
 
from sklearn.model_selection import KFold
 
clf = KNeighborsClassifier()
#parameter-parameter yang akan diujicobakan pada model
parameter_space = {
    'n_neighbors': [5, 10, 15, 20, 25],
    'metric': ['euclidean', 'manhattan']
}
 
#menginisialisasi object GridSearchCV pada classifier
#penjelasan terkait dengan parameter-parameter lain yang diterima pada object akan diberikan setelah potongan kode
 
kfold = KFold(n_splits=5, shuffle=True,random_state=57)
searcher = GridSearchCV(clf, parameter_space, scoring='accuracy', cv = kfold)
 
#meminta object untuk memproses data X dan y.
searcher.fit(X,y)
 
print("Parameter terbaik: ", searcher.best_params_)
print("Akurasi terbaik: ", searcher.best_score_)

# Tugas
# Aku penasaran, jika menggunakan parameterisasi model k-NN dengan strategi validasi k-Fold apakah dapat digabungkan dengan GridSearchCV?

# penjelasan
# output di atas menunjukkan bahwa berdasarkan proses pencarian yang telah dilakukan parameter terbaik diperoleh dari penggunaan fungsi jarak “manhattan” dengan nilai n_neighbors sebesar lima (5), model dengan parameter ini menghasilkan nilai akurasi sebesar 73.3%.  Apa saja proses yang terjadi saat memanggil fungsi fit(X,y) pada object GridSearchCV berdasarkan parameter-parameter yang diberikan padanya?

# 1. Berdasarkan parameter “parameter_space” object GridSearchCV akan mencoba melatih sejumlah model dengan kombinasi parameter berbeda dalam parameter. Berdasarkan potongan kode di atas, akan diujicobakan sebanyak 10 model k-NN dengan parameter yang berbeda, yaitu.

# Fungsi Jarak (metric)

# Jumlah    tetangga (n_neighbors)

# manhattan 5

# manhattan 10

# manhattan 15

# manhattan 20

# manhattan 25

# euclidean 5

# euclidean 10

# euclidean 15

# euclidean 20

# euclidean 25

 
# 2. Untuk setiap model, object GridSearchCV akan melakukan proses pelatihan dan evaluasi dengan menggunakan strategi validasi sesuai dengan parameter “cv” yang diberikan. Dalam potongan kode di atas, aku menspesifikasikan strategi validasi silang dengan nilai k sama dengan lima (5).

 
# 3. Terakhir, fungsi pengukuran performa yang digunakan oleh object GridSearchCV akan disesuaikan dengan nilai yang dispesifikasikan pada parameter “scoring” yang diberikan. Dalam potongan kode di atas, aku menspesifikasikan metrik akurasi.

 
# Setelah fungsi fit(X,y) selesai, object GridSearchCV (dalam variabel searcher) akan menyimpan performa (skor) rata-rata testing untuk model terbaik dalam atribut “best_score_” dan menyimpan konfigurasi parameter terbaik dalam atribut “best_params” miliknya.