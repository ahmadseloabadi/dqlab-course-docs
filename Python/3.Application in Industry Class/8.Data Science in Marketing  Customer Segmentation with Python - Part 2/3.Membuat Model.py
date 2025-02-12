import pandas as pd 
df_model = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/df-customer-segmentation.csv')

import pickle  
from kmodes.kmodes import KModes  
from kmodes.kprototypes import KPrototypes  
  
kproto = KPrototypes(n_clusters=5, random_state = 75)
kproto = kproto.fit(df_model, categorical=[0,1,2])
  
#Save Model  
pickle.dump(kproto, open('cluster.pkl', 'wb'))


# Teori
# Selanjutnya kamu dapat melakukan pembuatan model dengan jumlah kluster yang sudah didapat pada tahap sebelumnya yaitu 5 dan menyimpan hasilnya sebagai pickle file.

# Tugas:

# Buatlah model Kprototypes dengan nilai k = 5 dan random state = 75. Kemudian simpan hasilnya dalam bentuk pickle.