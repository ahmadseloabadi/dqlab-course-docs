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
	
from sklearn.metrics import accuracy_score
from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import GridSearchCV
from sklearn.model_selection import KFold
 
#library yang kita gunakan untuk menggabungkan beberapa object yang dibutuhkan dalam proses pengembangan model machine learning sebagai satu kesatuan.
#saat sebuah fungsi fit, predict, ataupun fungsi lainnya dipanggil pada object pipeline maka fungsi akan dijalankan pada setiap object di dalamnya secara berurutan
from sklearn.pipeline import Pipeline
 
#library yang kita gunakan untuk mengubah skalasi nilai dari setiap atribut ke dalam suatu rentang tertentu
from sklearn.preprocessing import MinMaxScaler
 
clf = Pipeline([
#menginisialisasi object MinMaxScaler untuk mengubah setiap kolom agar nilai maksimumnya sama dengan 1 dan nilai minimumnya sama dengan 0
  ('scaler', MinMaxScaler(feature_range=(0,1))),
  ('clf', KNeighborsClassifier()),              
])
 
parameter_space = {
    'clf__n_neighbors': [2,3,4,5,6,7,8,9,11],
    'clf__metric': ['euclidean', 'manhattan']
}
 
kfold = KFold(n_splits=5, shuffle=True,random_state=57)
searcher = GridSearchCV(clf, parameter_space, scoring='accuracy', cv = kfold)
 
searcher.fit(X,y)
 
print("Parameter terbaik: ", searcher.best_params_)
print("Akurasi terbaik: ", searcher.best_score_)

# Penjelasan
# Berdasarkan potongan kode di atas, dapat terlihat bahwa dengan melakukan proses scaling performa dari model klasifikasi dapat meningkat dengan sangat pesat (dari 77.66% menjadi 98.44%!).

# Hal ini dikarenakan metode k-NN bekerja dengan melibatkan fungsi jarak sehingga agar setiap atribut memiliki bobot yang sama, alangkah lebih baiknya jika menyamakan satuan/ skala dari setiap atribut. 