#Impor paket yang dibutuhkan
import pandas as pd
from sklearn import metrics
 
#Unggah dataset yang disimpan dalam sebuah file CSV hasil_uji.csv
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/hasil_uji.csv')
 
y_actual = df['actual']
y_predict = df['predicted']

#Hitung nilai akurasi dari model
accuracy = metrics.accuracy_score(y_actual, y_predict)
print('Akurasi model: %.5f.' % accuracy)