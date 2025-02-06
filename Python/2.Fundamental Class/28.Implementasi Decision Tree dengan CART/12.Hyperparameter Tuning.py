#Kode sebelumnya
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn import metrics 

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df.drop(['kode_kontrak'], axis=1, inplace=True)
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

df.loc[(df['kpr_aktif']=='YA'), 'kpr_aktif'] = True
df.loc[(df['kpr_aktif']=='TIDAK'), 'kpr_aktif'] = False
df['kpr_aktif'] = df['kpr_aktif'].astype('bool')

feature_cols = ['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan']

X = df[feature_cols]
y = df['risk_rating']

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4, random_state=42)

#Impor fungsi GridSearchCV
from sklearn.model_selection import GridSearchCV

#Tentukan nilai parameter max_depth yang akan diuji
tuned_parameters = [{'max_depth': [1,2,3,4,5,6,7,8,9,10]}]

#Tentukan kriteria penilaian menggunakan nilai F1
print('\nTuning hyperparameters untuk F1-score\n')

clf = GridSearchCV(DecisionTreeClassifier
				   (), tuned_parameters, scoring='f1_macro')
clf.fit(X_train, y_train)

print('Hasil nilai uji saat melakukan tuning:')
means = clf.cv_results_['mean_test_score']
stds = clf.cv_results_['std_test_score']
for mean, std, params in zip(means, stds, clf.cv_results_['params']):
	print(f'{mean:0.3f} (+/-{std*2:0.03f}) for {params}')
	
#Parameter terbaik yang ditemukan
print('\nParameter terbaik yang ditemukan:')
print(clf.best_params_)

#Model dengan parameter terbaik yang ditemukan
best_model = clf.best_estimator_

#Lakukan prediksi dataset training dan dataset testing menggunakan model dengan parameter terbaik
train_pred = best_model.predict(X_train)
train_accuracy = metrics.accuracy_score(y_train, train_pred)
test_pred = best_model.predict(X_test)
test_accuracy = metrics.accuracy_score(y_test, test_pred)

print('\nAkurasi training dataset:', train_accuracy)
print('Akurasi testing dataset :', test_accuracy)


# Tugas
# Melihat hasil akurasi model pada dataset training dan testing yang cukup bagus (perbedaan masih dalam rentang 5%), aku menyimpulkan bahwa model yang dibangun memiliki akurasi yang cukup tinggi dan tidak terjadi overfitting. Jika aku ingin memastikan bahwa model yang aku dapatkan merupakan model yang terbaik, aku mencoba untuk melakukan tuning hyperparameter dengan menguji model untuk nilai max_depth yang bervariasi dari 1 hingga 10. Semakin besar nilai max_depth, maka model akan menjadi semakin kompleks dan dapat menyebabkan overfitting. Scoring parameter yang dipilih adalah F1-score, hal ini aku lakukan karena dataset yang digunakan tidak berimbang (imbalanced dataset).

# Setelah mendapatkan parameter terbaik melalui tuning hyperparameter ini, aku juga dapat menentukan akurasi pada dataset training dan testing

# penjelasan
# Akurasi yang aku peroleh dengan menggunakan model hasil hyperparameter tuning tetap sama. Ini mengkonfirmasi hasil yang telah aku dapatkan sebelumnya bahwa model yang aku gunakan sebelum hyperparamter tuning merupakan model dengan akurasi yang terbaik.

