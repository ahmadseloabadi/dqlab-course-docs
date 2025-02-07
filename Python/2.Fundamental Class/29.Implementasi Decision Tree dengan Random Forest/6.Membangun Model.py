#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)
df_credit_scoring['rata_rata_overdue'].replace({
   '0 - 30 days':1, 
   '31 - 45 days':2, 
   '46 - 60 days':3, 
   '61 - 90 days':4, 
   '> 90 days':5
}, inplace=True)

X = df_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values

y = df_credit_scoring['risk_rating'].values

from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)

#membangun model
from sklearn.tree import DecisionTreeClassifier 
 
#Fit the classifier with default hyper-parameters
clf = DecisionTreeClassifier(random_state=1234)
clf.fit(X_train, y_train)

#menampilkan struktur decision tree
import numpy as np
import matplotlib.pyplot as plt
from sklearn import tree
from sklearn.tree import plot_tree
 
feature_names = ['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman', 'jumlah_tanggungan']
 
target_names = df_credit_scoring['risk_rating'].unique().tolist()
 
target_names=[str(x) for x in target_names]
 
fig = plt.figure(figsize=(25,20))
plot_tree(clf, 
          feature_names=feature_names,  
          class_names=target_names,
          filled=True)
plt.tight_layout()
plt.show()

# Tugas
# Langkah berikutnya adalah membangun model. Pertama, aku akan coba menggunakan algoritma Decision Tree
# membuat struktur Decision Tree