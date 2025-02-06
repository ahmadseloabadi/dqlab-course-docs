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

#Visualisasi Decision Tree menggunakan text
#import relevant functions
from sklearn.tree import export_text
 
#export the decision rules
tree_rules = export_text(clf, feature_names=list(X.columns))
 
#print the result
print(tree_rules)

# Tugas
# 1. Pada akar pohon (ditandai dengan huruf A):

# Jumlah sampel pada dataset training adalah 540.
# Dari total 540 dataset dibagi menjadi 135 untuk kelas ‘1’, 93 untuk kelas ‘2’, 175 untuk kelas ‘3’, 74 untuk kelas ‘4’ dan 63 untuk kelas ‘5.’
# Keragaman pada dataset training ini cukup tinggi dengan nilai Gini Impurity = 0.77.
# Pemilahan pada fitur ‘kpr_aktif’ membagi dataset training menjadi dua sub-dataset: KPR tidak aktif (kpr_aktif = 0) dan KPR aktif (kpr_aktif = 1).
# 2. Pada sub-node (ditandai dengan huruf B dan C):

# Pada sub-dataset KPR tidak aktif (B) terdapat total 230 dataset dengan nilai Gini Impurity = 0.5. Sedangkan pada sub-dataset KPR aktif (C) terdapat total 310 dataset dengan nilai Gini Impurity = 0.593. Perhitungan nilai Gini Impurity hasil pemilahan sesuai bobotnya adalah 0.553. Ini artinya terjadi penurunan Gini Impurity dari 0.77 menjadi 0.553.
# Proses pemilahan ini berlanjut sampai kedalaman pohon maksimum 4.