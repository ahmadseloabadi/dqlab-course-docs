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

#Melakukan import library DecisionTreeClassifier dari paket sklearn.tree
from sklearn.tree import DecisionTreeClassifier
 
#Buat sebuah Decision Tree Classifier dengan metode gini impurity index, kedalaman pohon = 4 dan seed bilangan acak = 42
#Lakukan fitting model DTS dengan menggunakan training data
clf = DecisionTreeClassifier(criterion='gini', max_depth=4, random_state=42)

#Melakukan fitting model dengan dataset training
clf.fit(X_train, y_train)
print(clf)

# Tugas
# Setelah menjalankan proses sebelumnya, aku dapat melihat bahwa perwakilan dataset untuk tiap kelas pada dataset training dan testing cukup berimbang. Ini artinya waktu yang tepat bagiku untuk membangun model klasifikasi menggunakan library Decision Tree Classifier yang tersedia di Scikit-learn.

# Model yang dibangun menggunakan parameter berikut: criterion='gini', max_depth=4, random_state=42. Kriteria yang kupilih adalah Gini Impurity Index yang merupakan kriteria default. Aku menetapkan maksimum kedalaman Decision Tree tidak lebih dari 4 untuk menghindari overfitting karena jumlah fitur yang digunakan juga empat.

