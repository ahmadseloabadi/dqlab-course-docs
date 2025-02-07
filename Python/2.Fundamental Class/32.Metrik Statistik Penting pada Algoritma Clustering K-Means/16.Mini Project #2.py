#Import library pandas
import pandas as pd
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Drop kolom customer_id
RFM_km = data.drop(["customer_id"], axis=1)

#Penerapan RobustScaler
from sklearn.preprocessing import RobustScaler
robust_scaler = RobustScaler()
RFM_robust = robust_scaler.fit_transform(RFM_km)
RFM_robust = pd.DataFrame(RFM_robust)
RFM_robust.columns = ["Frequency","Recency","Monetary"]

#Import library K-Means
from sklearn.cluster import KMeans

#Menjalankan k-means dengan nilai k = 5
k_means = KMeans(n_clusters=5, random_state=0)
k_means.fit(RFM_robust)
 
#Pred menyimpan hasil prediksi label cluster untuk setiap data
pred = k_means.predict(RFM_robust)

#Menggabungkan dataframe data dan hasil label clustering
RFM_k5 = pd.concat([data, pd.Series(pred).rename("cluster")], axis=1)

#Import library matplotlib.pyplot dan seaborn
import matplotlib.pyplot as plt
import seaborn as sns
 
#Menampilkan boxplot dari RFM_k5
fig, ax = plt.subplots(1, 3, figsize=(8,6))
sns.boxplot(x="cluster", y="frequency", data=RFM_k5, ax=ax[0])
sns.boxplot(x="cluster", y="recency", data=RFM_k5, ax=ax[1])
sns.boxplot(x="cluster", y="monetary", data=RFM_k5, ax=ax[2])
plt.tight_layout()
plt.show()

# Tugas
# Setelah melihat hasilnya, aku jadi penasaran dengan jumlah cluster k=5 sehingga aku mencoba membuat grafik boxplot untuk cluster k=5. Aku pasti bisa menyelesaikan tantangan ini!


