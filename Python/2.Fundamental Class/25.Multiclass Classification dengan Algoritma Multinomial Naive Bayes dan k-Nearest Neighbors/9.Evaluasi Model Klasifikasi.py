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
 
#library yang digunakan untuk menggunakan model MNB
from sklearn.naive_bayes import MultinomialNB
 
#library yang akan kita gunakan untuk membagi dataset menggunakan strategi validasi KFold
from sklearn.model_selection import KFold
 
#menginisialisasi object KFold dengan jumlah kelompok data = 5. nilai random_state kita gunakan reproducibility (agar data acak yang kita dapatkan untuk setiap kelompok data selalu sama)
kf = KFold(n_splits = 5, shuffle=True, random_state = 57)
 
scores_test = []
scores_train = []
 
#meminta object kf untuk memecah data X ke sejumlah n kelompok dan mengiterasi setiap train_index dan test_index
for train_index, test_index in kf.split(X):
	X_train, y_train = X[train_index], y[train_index]
	X_test, y_test = X[test_index], y[test_index]
	model = MultinomialNB()
	
	#menspesifikasikan data latih beserta labelnya untuk dipelajari oleh model
	model.fit(X_train, y_train)
	
	#meminta model yang telah dilatih untuk memprediksi data X_train
	#menampung hasil prediksi ke dalam variabel y_pred
	y_pred = model.predict(X_train)
	
	#menampung akurasi dari model ke variabel current_score
	current_score = accuracy_score(y_train, y_pred)
	
	#menambahkan skor saat ini ke list scores
	scores_train.append(current_score)
	
	#meminta model yang telah dilatih untuk memprediksi data X_test
	#menampung hasil prediksi ke dalam variabel y_pred
	y_pred = model.predict(X_test)
	
	#menampung akurasi dari model ke variabel current_score
	current_score = accuracy_score(y_test, y_pred)
	
	#menambahkan skor saat ini ke list scores
	scores_test.append(current_score)
	
print("Skor latih tertinggi: ", round(max(scores_train), 2))
print("Skor latih terendah: ", round(min(scores_train), 2))
print("Skor latih rata-rata: ", round(sum(scores_train) / len(scores_train), 2))

print("Skor testing tertinggi: ", round(max(scores_test), 2))
print("Skor testing terendah: ", round(min(scores_test), 2))
print("Skor testing rata-rata: ", round(sum(scores_test) / len(scores_test), 2))

# Penjelasan
# Output pada potongan kode di atas menunjukkan bahwa model klasifikasi menghasilkan performa akurasi tertinggi sebesar 71%, akurasi terendah sebesar 68% dan akurasi rata-rata sebesar 70% untuk data latih. Selain itu, model klasifikasi menghasilkan performa akurasi tertinggi sebesar 76%, akurasi terendah sebesar 65% dan akurasi rata-rata sebesar 69% untuk data test.