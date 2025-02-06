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
 
from sklearn.model_selection import KFold
from sklearn.tree import DecisionTreeClassifier

#library yang dapat kita gunakan untuk menghitung nilai confusion matrix
from sklearn.metrics import confusion_matrix
 
kf = KFold(n_splits=10, shuffle=True, random_state=12)
 
kf.get_n_splits(X)
 
#menyiapkan array berukuran 2 * 2 untuk  menyimpan informasi confusion matrix
import numpy as np
cm_result = np.zeros((2,2))
for train_index,test_index in kf.split(X):
	X_train, X_test = X[train_index], X[test_index]
	y_train, y_test = y[train_index], y[test_index]
	
	model = DecisionTreeClassifier(random_state=12)
	model.fit(X_train,y_train)
	
	y_pred = model.predict(X_test)
	
	#menghitung nilai confusion matrix berdasarkan label sebenarnya dan label hasil prediksi model
	cm_result += confusion_matrix(y_test, y_pred)
	
print('Confusion Matrix untuk K-Fold = 10')
print(cm_result)

# Teori
# Confusion Matrix merupakan sebuah tabel yang menggambarkan performa dari suatu model pada suatu data yang diketahui nilai label sebenarnya. Tabel berikut dapat digunakan sebagai contoh untuk menggambarkan Confusion Matrix untuk permasalahan klasifikasi dengan label “Yes” and “No”.

#  	            Prediksi "No"	        Prediksi "Yes"
# Aktual "No"	    Nilai True Negative	    Nilai False Positive
# Aktual "Yes"	Nilai False Negative	Nilai True Positive
 

# Berdasarkan table diatas, berikut penjelasan dari setiap kolom dalam tabel.

# Nilai True Negative :berisikan jumlah kelas yang diprediksi memiliki label “No” dan benar memiliki nilai aktual “No”.
# Nilai True Positive :berisikan jumlah kelas yang diprediksi memiliki label “Yes” dan benar memiliki nilai aktual “Yes”
# Nilai False Negative :berisikan jumlah kelas yang diprediksi memiliki label “No” akan tetapi memiliki label aktual “Yes”.
# Nilai False Positive ;berisikan jumlah kelas yang diprediksi memiliki label “Yes” akan tetapi memilki label aktual “No”.
 