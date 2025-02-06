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
 
#Hitung nilai Precision pada tiap kelas, pilih average = None supaya menampilkan nilai presisi dari tiap kelas
precision = metrics.precision_score(y_actual, y_predict, average=None)
 
#Ubah menjadi sebuah dataframe
precision_results = pd.DataFrame(precision, index=labels)
 
#Ubah nama pada kolom hasil
precision_results.rename(columns={0:'precision'}, inplace=True)
print('Precision setiap kelas:\n', precision_results)