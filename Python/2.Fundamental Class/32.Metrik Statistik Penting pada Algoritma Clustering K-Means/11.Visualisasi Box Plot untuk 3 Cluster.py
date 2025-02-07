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

#Import library Kmeans
from sklearn.cluster import KMeans
	
# menjalankan k-means dengan nilai k = 3
k_means = KMeans(n_clusters=3, random_state=0)
k_means.fit(RFM_robust)
 
#pred menyimpan hasil prediksi label cluster untuk setiap data
pred = k_means.predict(RFM_robust)

#Menggabungkan RFM dan hasil label clustering
RFM_labeled = pd.concat([data, pd.Series(pred).rename("cluster")], axis=1)

#Import library matplotlib dan seaborn
import matplotlib.pyplot as plt
import seaborn as sns

#Menampilkan boxplot elbow method
fig, ax = plt.subplots(1, 3, figsize=(8,6))

sns.boxplot(x="cluster", y="frequency", data=RFM_labeled, ax=ax[0])
sns.boxplot(x="cluster", y="recency", data=RFM_labeled, ax=ax[1])
sns.boxplot(x="cluster", y="monetary", data=RFM_labeled, ax=ax[2])
plt.tight_layout()
plt.show()

# Penjelasan
# Cluster 1 total transaksinya rendah, sementara cluster 2 memiliki rentang monetary yang cukup besar dan nilai total transaksinya paling tinggi dibandingkan kedua cluster lainnya. Pada bagian recency, cluster 1 memiliki rentang yang sangat besar. Ketiga cluster ini sulit dibedakan pada bagian ini. Sementara pada bagian frekuensi transaksi, cluster 0 memiliki frekuensi transaksi lebih besar dibandingkan kedua cluster lainnya. Nilai frekuensi cluster 1 paling kecil, sehingga kita bisa menyimpulkan bahwa konsumen pada cluster 1 lebih jarang melakukan transaksi dibandingkan kedua cluster lainnya. 