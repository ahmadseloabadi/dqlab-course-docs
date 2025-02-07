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

#Import KMeans & silhouette_score
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score

#Menjalankan k-means dengan nilai k = 4
k_means = KMeans(n_clusters=4, random_state=0)
k_means.fit(RFM_robust)

#Pred menyimpan hasil prediksi label cluster untuk setiap data
pred = k_means.predict(RFM_robust)

#Menggabungkan dataframe data dan hasil label clustering
RFM_labeled = pd.concat([data, pd.Series(pred).rename("cluster")], axis=1)

#Import library matplotlib dan seaborn
import matplotlib.pyplot as plt
import seaborn as sns

#Menampilkan boxplot silhouette method
fig, ax = plt.subplots(1, 3, figsize=(8,6))
sns.boxplot(x="cluster", y="frequency", data=RFM_labeled, ax=ax[0])
sns.boxplot(x="cluster", y="recency", data=RFM_labeled, ax=ax[1])
sns.boxplot(x="cluster", y="monetary", data=RFM_labeled, ax=ax[2])
plt.tight_layout()
plt.show()

# Penjelasan
# Analisis Box Plot untuk 4 Cluster
# Aku memperhatikan visualisasi boxplot yang kudapatkan untuk 4 cluster.

# Berdasarkan itu, aku melihat perbedaan yang jelas dari setiap cluster pada bagian monetary dari tiap cluster. Cluster 0 nilai monetary-nya sangat rendah, sementara cluster 1 memiliki nilai monetary tertinggi. Cluster 2 merupakan kelompok dengan frekuensi transaksi yang paling banyak dibandingkan dengan cluster lainnya.