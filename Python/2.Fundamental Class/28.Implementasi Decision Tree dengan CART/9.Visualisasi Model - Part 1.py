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

#Melakukan labeling pada Decision Tree
feature_names = X.columns
labels = list(y.unique())
labels.sort()
labels = [str(x) for x in labels]

#Visualisasi Decision Tree Classifier menggunakan library 'tree' impor paket yang dibutuhkan
from sklearn import tree
import matplotlib.pyplot as plt

#plot gambar dan atur warna latar
plt.figure(figsize=(30,10), facecolor ='yellow')

#Buat diagram pohon
tree.plot_tree(clf, feature_names=feature_names, class_names=labels, rounded=True, filled=True, fontsize=8)
 
#Apabila gambar pohon yang dihasilkan tidak jelas, gambar tersebut dapat disimpan dengan resolusi tinggi ke dalam bentuk JPEG, PNG, dsb. Gambar dapat dilihat pada file yang telah disimpan
#plt.savefig("nama_file.png", dpi=100)
 
#Tampilkan gambar
plt.tight_layout()
plt.show()

# # Tugas
# Setelah mendapatkan model Decision Tree Classifier, aku ingin melihat visualisasi dari model tersebut. Namun sebelum melakukan visualisasi, aku melakukan labeling pada Decision Tree supaya penamaan label lebih rapi.

# Sekarang aku siap untuk melihat visualisasi dari model tersebut. Sesuai dengan yang sudah aku pelajari, aku menjalankan perintah kode untuk visualisasi

# # Penjelasan
# Dari sini aku mampu memahami bahwa Diagram Pohon yang dihasilkan memberikan informasi mengenai struktur pembagian dataset sesuai pemilihan fitur penting. Fitur yang paling penting berada posisi paling atas (sebagai akar dari pohon keputusan) adalah “Apakah nasabah mempunyai KPR aktif atau tidak?”.

