#Impor paket yang dibutuhkan
from sklearn import metrics
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd
 
#Baca dataset yang disimpan dalam sebuah file CSV hasil_uji.csv
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/hasil_uji.csv')
 
y_actual = df['actual']
y_predict = df['predicted']
print(df.head())

