import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from kmodes.kmodes import KModes  
from kmodes.kprototypes import KPrototypes  
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t") 
df_model = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/df-customer-segmentation.csv')
kproto = KPrototypes(n_clusters=5, random_state = 75)  
kproto = kproto.fit(df_model, categorical=[0,1,2])  

clusters =  kproto.predict(df_model, categorical=[0,1,2]) 
df_final = df.copy()    
df_final['cluster'] = clusters 

# Data Numerical
kolom_numerik = ['Umur','NilaiBelanjaSetahun']  
  
for i in kolom_numerik:  
    plt.figure(figsize=(6,4))  
    ax =  sns.boxplot(x = 'cluster',y = i, data = df_final)  
    plt. title ('\nBox Plot {}\n'.format(i), fontsize=12)  
    plt.show() 


# Teori
# Kamu juga membuat visualisasi hasil clustering untuk dapat memudahkan kamu melakukan penamaan di tiap-tiap cluster.

# Tugas:

# Buatlah boxlplot untuk memvisualisasikan setiap variabel tiap pelanggan yang dibagi berdasarkan nama cluster-nya.

# Note: Jika terdapat perbedaan urutan penomoran cluster dengan hasil kode yang di run, maka untuk mengkomparasinya kamu dapat memperhatikan posisi

# lower fence (Q1 - 1.5*IQR),
# Q1,
# Q2,
# Q3, dan
# upper fence (Q3 + 1.5*IQR)
# pada boxplot untuk setiap clusternya.