#Kode sebelumnya
import pandas as pd

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df.drop(['kode_kontrak'], axis=1, inplace=True)
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

df.loc[(df['kpr_aktif']=='YA'), 'kpr_aktif'] = True
df.loc[(df['kpr_aktif']=='TIDAK'), 'kpr_aktif'] = False
df['kpr_aktif'] = df['kpr_aktif'].astype('bool')

feature_cols = ['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan']

X = df[feature_cols]
y = df['risk_rating']

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4, random_state=42)

from sklearn.tree import DecisionTreeClassifier
clf = DecisionTreeClassifier(criterion='gini', max_depth=4, random_state=42)
clf.fit(X_train, y_train)

#Lakukan prediksi dataset training menggunakan model yang telah dibangun
from sklearn import metrics 
train_pred = clf.predict(X_train)
train_accuracy = metrics.accuracy_score(y_train, train_pred)
print('Akurasi training dataset:', train_accuracy)

#Lakukan prediksi dataset testing menggunakan model yang telah dibangun
test_pred = clf.predict(X_test)
test_accuracy = metrics.accuracy_score(y_test, test_pred)
print('Akurasi testing dataset :', test_accuracy)


# Tugas
# Aku menarik nafas panjang. Masih belum selesai, aku harus berjuang sedikit lagi, batinku menyemangati diri sendiri. Setelah meneguk sisa kopi di cangkir, aku pun lanjut fokus untuk mengukur akurasi dari model berdasarkan dataset training dan dataset testing.

# Selanjutnya, aku ingin mengukur akurasi dari model berdasarkan dataset training dan dataset testing. Aku ingin melihat apakah terjadi overfitting atau underfitting pada model. Overfitting dapat dikenali ketika akurasi model pada dataset training jauh lebih tinggi dibandingkan pada dataset testing, sedangkan underfitting dapat diketahui ketika akurasi model rendah baik pada dataset training ataupun dataset testing.