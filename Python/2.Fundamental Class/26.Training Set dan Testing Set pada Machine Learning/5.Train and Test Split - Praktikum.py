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

#fungsi untuk membagi data dan label ke dalam dua bagian (data latih dan data testing) secara acak tersedia dalam library scikit-learn.model_selection 
from sklearn.model_selection import train_test_split
 
#X_train dan y_train akan kita gunakan sebagai data untuk melatih model X_test dan y_test akan kita gunakan sebagai data testing untuk mengetahui kemampuan model untuk data yang belum pernah ia jumpai
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=12)

from sklearn.tree import DecisionTreeClassifier

model = DecisionTreeClassifier(random_state=12)
 
#melatih model berdasarkan data latih (X_train) dan labelnya (y_train)
model.fit(X_train,y_train)

#melakukan prediksi terhadap setiap data testing (X_test) dan menyimpan hasil prediksi dalam array 'y_pred'
y_pred = model.predict(X_test)

#mengimport fungsi untuk menghitung akurasi dari library scikit-learn tepatnya dari modul metrics.
from sklearn.metrics import accuracy_score
 
#menghitung nilai akurasi dari hasil prediksi (y_pred) dengan label aktual yang dimiliki oleh setiap data test (y_test)
score = accuracy_score(y_test,y_pred)
 
#menampilkan hasil akurasi dalam persen
print('Hasil akurasi model: %.2f %%' % (100*score))

# Teori
# Selanjutnya, dataset yang merupakan variabel bebas X dan variabel bergantung y yang dibagi menjadi bagian data latih (training dataset) dan bagian data uji (testing dataset).

