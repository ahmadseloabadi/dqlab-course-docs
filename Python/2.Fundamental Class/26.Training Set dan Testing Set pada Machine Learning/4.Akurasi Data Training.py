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

#mengimport model 'DecisionTreeClassifier' dari library scikit-learn tepatnya dari modul tree.
from sklearn.tree import DecisionTreeClassifier
 
#inisialisasi model
model = DecisionTreeClassifier(random_state=12)
 
#melatih model berdasarkan data input (X) dan label (y)
model.fit(X, y)

#melakukan prediksi terhadap setiap data dalam X dan menyimpan hasil prediksi dalam array 'y_pred'
y_pred = model.predict(X)

#mengimport fungsi untuk menghitung akurasi dari library scikit-learn tepatnya dari modul metrics.
from sklearn.metrics import accuracy_score
 
#menghitung nilai akurasi dari hasil prediksi (y_pred) dengan label aktual yang dimiliki oleh setiap data (y) nilai akurasi dihitung dengan menggunakan total prediksi benar dibagi dengan total data yang diprediksi
score = accuracy_score(y,y_pred)
 
#menampilkan hasil akurasi dalam persen
print('Hasil akurasi model: %.2f %%' % (100*score))

# Tugas
# Aku akan melihat seberapa besar nilai akurasi yang aku peroleh ketika memodelkan analisis churn pelanggan berdasarkan variabel bebas X dan variabel bergantung y untuk keseluruhan butir data. Di sini aku akan memodelkan dengan decision tree.

# Penjelasan
# Setelah menggunakan potongan kode di atas, aku berhasil menghasilkan nilai akurasi sampai dengan 90.78%. Hore! Hatiku bersorak girang. Aku nggak nyangka bisa menuntaskan modul ini dengan baik. 

