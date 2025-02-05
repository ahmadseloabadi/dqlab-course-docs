import pandas as pd
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/online_raw.csv')
dataset.fillna(dataset.mean(), inplace = True)

from sklearn.preprocessing import MinMaxScaler
#Define MinMaxScaler as scaler  
scaler = MinMaxScaler()  
#list all the feature that need to be scaled  
scaling_column = ['Administrative', 'Administrative_Duration', 'Informational', 'Informational_Duration', 'ProductRelated', 'ProductRelated_Duration', 'BounceRates', 'ExitRates', 'PageValues']
#Apply fit_transfrom to scale selected feature  
dataset[scaling_column] = scaler.fit_transform(dataset[scaling_column])
#Cheking min and max value of the scaling_column
print(dataset[scaling_column].describe().T[['min','max']])

# Teori
# Proses scaling hanya bisa dilakukan untuk feature dengan tipe numerik, sedangkan dalam dataset online_raw, terdapat feature dengan tipe string atau karakter dan categorical, seperti Month, VisitorType, Region.

# Oleh karena itu, kita tidak dapat langsung menggunakan code di atas, tetapi kita perlu terlebih dahulu menyeleksi feature - feature dari dataset yang bertipe numerik.

# Senja pun membagikan catatan berisi  langkah - langkah untuk proses scaling dengan dataset yang memiliki feature dengan tipe data yang berbeda:

# Tugas
# Import MinMaxScaler dari sklearn.preprocessing
# Deklarasikan fungsi MinMaxScaler() ke dalam variabel scaler
# List semua feature yang akan di-scaling dan beri nama scaling_column yaitu :
# Berdasarkan contoh code yang dipraktekkan oleh Aksara, ganti dataset.columns dengan scaling_column.