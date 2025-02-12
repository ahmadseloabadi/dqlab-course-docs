import pandas as pd
from kmodes.kmodes import KModes  
from kmodes.kprototypes import KPrototypes  
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t") 
df_model = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/df-customer-segmentation.csv')
kproto = KPrototypes(n_clusters=5, random_state = 75)  
kproto = kproto.fit(df_model, categorical=[0,1,2])  

# Menentukan segmen tiap pelanggan    
clusters = kproto.predict(df_model, categorical=[0,1,2])
print('segmen pelanggan: {}\n'.format(clusters))    
    
# Menggabungkan data awal dan segmen pelanggan    
df_final = df.copy()    
df_final['cluster'] = clusters
print(df_final.head())   



# Teori
# Model yang sudah kamu buat dapat digunakan untuk menentukan setiap pelanggan masuk ke dalam cluster yang mana. Kali ini kamu akan menggunakan model tersebut untuk menentukan segmen pelanggan yang ada di dataset.

# Tugas:

# Tentukan cluster setiap pelanggan yang ada di dataset menggunakan model kproto yang sudah dibuat sebelumnya. Kemudian gabungkan hasil prediksi tersebut dengan data awal (df) sehingga kita mendapatkan data pelanggan beserta nama cluster-nya.