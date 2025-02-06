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
 
#men-set nilai K = 10
kf = KFold(n_splits= 10, shuffle=True,random_state = 12)
 
#menyesuaikan nilai K dengan jumlah data pada variabel X
kf.get_n_splits(X)
 
#mengulangi proses pelatihan dan evaluasi pada setiap kelompok data yang telah dibagi melalui object KFold
for train_index, test_index in kf.split(X):
	X_train, X_test = X[train_index], X[test_index]
	y_train, y_test = y[train_index], y[test_index]
	model = DecisionTreeClassifier(random_state=12)
	model.fit(X_train,y_train)
	
	y_pred = model.predict(X_test)
	score = accuracy_score(y_test,y_pred)
	
	print('Hasil akurasi model: %.2f %%' % (100*score))

# Teori
# Strategi K-Fold bekerja dengan membagi data ke sejumlah K kelompok. Kemudian, berdasarkan proses pembagian data, akan dilakukan proses percobaan pelatihan dan evaluasi model dengan menggunakan satu kelompok data sebagai data testing dan kelompok data lainnya sebagai data training. 
# Strategi K-Fold tersebut dapat memanfaatkan seluruh data yang dimiliki sebagai data uji. Hal ini dapat meyakinkan bahwa performa capaian dari model yang dihasilkan lebih maksimal. Selama proses evaluasi, sebagian kecil dari keseluruhan data hanya dapat digunakan sebanyak satu kali.
# Berdasarkan hal tersebut, besar sekali kemungkinan nilai performa dari model bias (menghasilkan nilai performa yang sangat baik atau menghasilkan nilai performa yang sangat buruk) terhadap konfigurasi ini, tetapi tidak untuk konfigurasi yang lain.