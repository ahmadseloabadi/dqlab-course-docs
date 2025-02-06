#Impor paket yang dibutuhkan
import pandas as pd
from sklearn import metrics
 
#Unggah dataset yang disimpan dalam sebuah file CSV hasil_uji.csv
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/hasil_uji.csv')
 
y_actual = df['actual']
y_predict = df['predicted']

#Penamaan label pada tiap kelas
#Pilih nilai pada label
labels = list(y_actual.unique())
#Urutkan risiko dari nilai terendah ke nilai tertinggi
labels.sort()
 
#Hitung nilai F1 pada tiap kelas dan pilih average=None untuk menampilkan nilai F1 dari tiap kelas
f1 = metrics.f1_score(y_actual, y_predict, average=None)
 
#Ubah menjadi sebuah dataframe
f1_results = pd.DataFrame(f1, index=labels)
 
#Ubah nama pada kolom hasil
f1_results.rename(columns={0:'f1'}, inplace=True)
print('F1-score:\n', f1_results)