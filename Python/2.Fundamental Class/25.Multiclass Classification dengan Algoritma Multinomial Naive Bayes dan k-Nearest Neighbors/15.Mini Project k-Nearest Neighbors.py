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

clf = KNeighborsClassifier()

#parameter-parameter yang akan diujicobakan pada model
parameter_space = {
    'n_neighbors': [2, 3, 4, 5, 6, 7, 8, 9, 11],
    'metric': ['euclidean', 'manhattan']
}

#menginisialisasi object GridSearchCV pada classifier, penjelasan terkait dengan parameter-parameter lain yang diterima pada object akan diberikan setelah potongan kode
kfold = KFold(n_splits=5, shuffle=True,random_state=57)
searcher = GridSearchCV(clf, parameter_space, scoring='accuracy', cv = kfold)

#meminta object untuk memproses data X dan y.
searcher.fit(X,y)

print("Parameter terbaik: ", searcher.best_params_)
print("Akurasi terbaik: ", searcher.best_score_)

# Tugas
# Seperti saran dari Andra akupun mencoba dengan parameter yang lain, tetapi setelah banyak mencoba berbagai  model menurutku dengan nilai n_neighbors adalah model terbaik, nah sekarang aku akan mencoba dengan parameter lainnya, apakah hasilnya akan lebih baik," ucap Antara.

# Fungsi Jarak:  euclidean, manhattan

# Jumlah tetangga:  2, 3, 4, 5, 6, 7, 8, 9, 11

# Penjelasan
# Aksara!! Lihat ini, ternyata aku bisa meningkatkan akurasinya lagi hingga 77.56%, ini hasil akurasi paling maksimal yang pernah aku dapatkan." ucap Antara.

# “Wah kamu keren sekali Antara, berarti hasil tadi sempat kamu coba sebelumnya bukan yang paling tertinggi ya," balas Aksara.