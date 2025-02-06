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

#Hitung nilai Recall pada tiap kelas dan pilih average=None untuk menampilkan nilai recall dari tiap kelas
recall = metrics.recall_score(y_actual, y_predict, average=None)

#Ubah menjadi sebuah dataframe
recall_results = pd.DataFrame(recall, index=labels)
 
#Ubah nama pada kolom hasil
recall_results.rename(columns ={0:'Recall'}, inplace=True)
print('Recall:\n', recall_results)