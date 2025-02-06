#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')

df.drop('ID_Customer', axis=1, inplace=True)

df['Jenis_kelamin']= df['Jenis_kelamin'].map(
   lambda value: 1 if value == 'Perempuan' else 0)
 
df['using_reward']= df['using_reward'].map(
   lambda value: 1 if value == 'Yes' else 0)

df['pembayaran']= df['pembayaran'].map(
    lambda value: 2 if value == 'Credit' 
    else 1 if value == 'Bank Transfer' 
    else 0)

df['Subscribe_brochure']= df['Subscribe_brochure'].map(
    lambda value: 0 if value == 'No'  else 1)

df['churn'] = df['churn'].map(
    lambda value: 1 if value == 'Yes' else 0)

y = df.pop('churn').to_numpy()
X = df.to_numpy()

#mengimport fungsi K-Fold dari modul model_selection pada library scikit-learn
from sklearn.model_selection import KFold

from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
 
#men-set nilai K = 20
kf = KFold(n_splits= 20, shuffle=True,random_state = 12)
 
#menyesuaikan nilai K dengan jumlah data pada variabel X
kf.get_n_splits(X)

total_score = 0

#mengulangi proses pelatihan dan evaluasi pada setiap kelompok data yang telah dibagi melalui object KFold
for train_index, test_index in kf.split(X):
	X_train, X_test = X[train_index], X[test_index]
	y_train, y_test = y[train_index], y[test_index]
	model = DecisionTreeClassifier(random_state=12)
	model.fit(X_train,y_train)
	
	y_pred = model.predict(X_test)
	score = accuracy_score(y_test,y_pred)
	
	total_score += score
	print('Hasil akurasi model: %.2f %%' % (100*score))
	
print('\nRata-rata akurasi model: %.2f %%' % (100*total_score/20))

# Tugas
# Akhirnya perjuanganku tidak sia-sia, aku berhasil mengimplementasikan strategi K-Fold dengan nilai K sama dengan sepuluh (10). Fiuh!

# Sekarang, aku ingin mengimplementasikan lagi strategi K-Fold dengan nilai sama dengan dua puluh (20).