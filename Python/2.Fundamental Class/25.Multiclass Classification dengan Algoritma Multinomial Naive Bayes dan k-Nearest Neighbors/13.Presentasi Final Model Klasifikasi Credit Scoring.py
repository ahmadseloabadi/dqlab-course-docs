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
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import MinMaxScaler
 
clf = Pipeline([
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
 
#merepresentasikan ketiga data sebagai variabel X_new
X_new = [
    [320,1,36,1,2],
    [220,0,12,0,1],
    [300,0,12,2,0]
]
 
#perhatikan bahwa kita tidak harus melakukan skalasi terhadap X_new dan proses predict akan melakukannya untuk kita karena kita sudah menspesifikasikan object MinMaxScaler dalam object pipeline pada potongan kode sebelumnya
print(searcher.best_estimator_.predict(X_new))

# Tugas
# Jadi begini Ndra, setelah aku dan Aksara melakukan beberapa kali percobaan akhirnya kita bisa mencapai akurasi tertinggi sebesar 98.44%," ucap Antara

# "Sudah aku duga kalian pasti mampu mengerjakannya hingga hasil akurasi tertinggi!! Aku benar-benar berterima kasih dengan kalian karena sudah membantu aku dalam pengerjaan model assessment, sekarang aku jadi lebih percaya diri untuk mengajukannya!" ucap Andra

# Antara dan Aksara menjawab, "No problem, Ndra! Tentu saja kita akan pasti selalu membantu." sambil mengacungkan kedua ibu jari.

# Pendapatan tahunan      KPR Aktif       Durasi Pinjaman     Tanggungan      Rata-rata Overdue

# 320                      Ya (1)         36                  1               46-60 days (2)

# 220                     Tidak (0)       12                  0               31-45 days (1)

# 300                     Tidak (0)       12                  2               0-30 days (0)   

# penjelasan
# Nah kurang lebih seperti ini Ndra hasil prediksinya, jika kita memberikan pinjaman pada nasabah pertama akan sangat beresiko karena memiliki risk rating atau nilai resiko 3. Sementara itu, nasabah dengan kriteria kedua cukup beresiko (risk rating bernilai 2) dan pada nasabah ketiga tidak beresiko (risk rating bernilai 1)," ucap Antara pada Andra.

# "Ok untuk sampai saat ini aku sudah memiliki gambaran mana saja yang yang bisa kita beri pinjaman, sekali terima kasih untuk kalian berdua ya. Kalau project ini berhasil kalian akan aku traktir!" balas Andra.