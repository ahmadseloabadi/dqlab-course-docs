#Import library pandas yang akan digunakan untuk mengolah data menggunakan struktur dataframe
import pandas as pd
pd.set_option('display.max_column', 20)

#Import library train_test_split dari sklearn.model_selection
from sklearn.model_selection import train_test_split

#Import library DecisionTreeClassifier dari paket sklearn.tree
from sklearn.tree import DecisionTreeClassifier

#Import library metrics dari sklearn
from sklearn import metrics

#Import library GridSearchCV dari sklearn.model_selection
from sklearn.model_selection import GridSearchCV

#Unggah dataset yang disimpan dalam sebuah file Excel
df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

#Periksa sampel dari dataset dengan menjalankan perintah df.head()
print('Lima data teratas:')
print(df.head())
#Periksa info dataset
print()
df.info()

#Hapus kolom kode_kontrak dari dataframe
df.drop(['kode_kontrak'], axis=1, inplace=True)

#Hapus kolom rata_rata_overdue dari dataframe
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

#Konversi tipe data "kpr_aktif" dari tipe string menjadi boolean
df.loc[(df['kpr_aktif']=='YA'), 'kpr_aktif'] = True
df.loc[(df['kpr_aktif']=='TIDAK'), 'kpr_aktif'] = False
df['kpr_aktif'] = df['kpr_aktif'].astype('bool')

#Membagi kolom menjadi variabel fitur dan variabel target
#Variabel fitur 
feature_cols = ['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan']
X = df[feature_cols]
#Variabel target
y = df['risk_rating']

#Bagi dataset menjadi training (70%) dan testing set (30%) dan seed untuk random number=42 (seed boleh bebas dipilih)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

#Buat sebuah Decision Tree Classifier dengan metode gini impurity index, kedalaman pohon=2 dan seed bilangan acak=42. Lakukan fitting model DTS dengan menggunakan training data
dtc = DecisionTreeClassifier(criterion='gini', max_depth=2, random_state=42)

#Melakukan fitting model dengan dataset training
dtc.fit(X_train, y_train)

print('\nAkurasi untuk:', dtc)
#Lakukan prediksi dataset training menggunakan model yang telah dibangun
train_pred = dtc.predict(X_train)
train_accuracy = metrics.accuracy_score(y_train, train_pred)
print('Accuracy training:', train_accuracy)

#Lakukan prediksi dataset testing menggunakan model yang telah dibangun
test_pred = dtc.predict(X_test)
test_accuracy = metrics.accuracy_score(y_test, test_pred)
print('Accuracy testing :', test_accuracy)

#Lakukan hyperparameter tuning dengan GridSearchCV
tuned_parameters = [{'max_depth': [2,4,6,8,10]}]
score = 'recall'

clf = GridSearchCV(DecisionTreeClassifier(), tuned_parameters, scoring=score+'_macro')
clf.fit(X_train, y_train)

print('\nTuning hyperparameters untuk', score)

print('\nHasil nilai uji saat melakukan tuning:')

means = clf.cv_results_['mean_test_score']
stds = clf.cv_results_['std_test_score']

for mean, std, params in zip(means, stds, clf.cv_results_['params']):
    print(f'{mean:0.3f} (+/-{std*2:0.03f}) untuk {params}')

print('\nParameter terbaik yang ditemukan:')
print(clf.best_params_)

print('\nAkurasi untuk model terbaik:')
#Model terbaik
best_model = clf.best_estimator_

#Lakukan prediksi dataset training menggunakan model terbaik
train_pred_best = best_model.predict(X_train)
train_accuracy_best = metrics.accuracy_score(y_train, train_pred_best)
print('Accuracy training:', train_accuracy_best)

#Lakukan prediksi dataset testing menggunakan model yang telah dibangun
test_pred_best = best_model.predict(X_test)
test_accuracy_best = metrics.accuracy_score(y_test, test_pred_best)
print('Accuracy testing :', test_accuracy_best)

# Tugas
# Sebelum pulang dan mengakhiri hari ini dengan sempurna, aku memutuskan untuk berlatih satu kasus lagi. Jika sebelumnya aku sudah berhasil membuat model Decision Tree dan membantu menyelesaikan permasalahan Andra, kali ini aku ingin mencoba melakukan tuning hyperparameter pada DecisionTreeClassifier yang sudah kubuat. Namun saat ini aku ingin menggunakan recall sebagai scoring parameter dan max_depth=[2,4,6,8,10].

