import pandas as pd
import numpy as np
from sklearn import preprocessing

csv_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/shopping_data.csv")
array = csv_data.values
# X merupakan matriks yang berisi fitur dataset yang akan digunakan dalam machine learning, baik untuk regresi, klasifikasi, pengklusteran, atau normalisasi
# Pada kasus kita, X berisi fitur-fitur yang digunakan untuk dinormalisasi dengan teknik min-max scaler
X = array[:,2:5] #memisahkan fitur dari dataset. 
Y = array[:,0:1]  #memisahkan class dari dataset

dataset=pd.DataFrame({"Customer ID":array[:,0],"Gender":array[:,1],"Age":array[:,2],"Income":array[:,3],"Spending Score":array[:,4]})
print("dataset sebelum dinormalisasi :")
print(dataset.head(10))

min_max_scaler = preprocessing.MinMaxScaler(feature_range=(0,1)) #inisialisasi normalisasi MinMax
data = min_max_scaler.fit_transform(X) #transformasi MinMax untuk fitur
dataset = pd.DataFrame({"Age":data[:,0],"Income":data[:,1],"Spending Score":data[:,2],"Customer ID":array[:,0],"Gender":array[:,1]})

print("dataset setelah dinormalisasi :")
print(dataset.head(10))
# Teori
# Scikit Learn merupakan library pada python yang digunakan untuk machine learning dan data science. Salah satu library yang selalu menjadi favorit dan komunitasnya sangat kuat. Scikit-learn sendiri tidak hanya untuk analytics saja, namun juga untuk pre-processing, feature selection, dan proses analysis lainnya. Melanjutkan dari sesi normalisasi data