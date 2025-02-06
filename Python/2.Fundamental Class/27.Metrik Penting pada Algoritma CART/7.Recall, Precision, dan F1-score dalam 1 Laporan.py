#Impor paket yang dibutuhkan
import pandas as pd
from sklearn import metrics
 
#Unggah dataset yang disimpan dalam sebuah file CSV hasil_uji.csv
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/hasil_uji.csv')
 
y_actual = df['actual']
y_predict = df['predicted']
 
#Hitung nilai recall, precision, dan f1-score
class_report = metrics.classification_report(y_actual, y_predict)

print('Classification report:\n', class_report)