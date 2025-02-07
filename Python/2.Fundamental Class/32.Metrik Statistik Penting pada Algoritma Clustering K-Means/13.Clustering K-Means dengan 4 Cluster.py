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

#Menghitung jumlah data dari tiap cluster
print("Jumlah data dari tiap cluster:")
print(RFM_labeled['cluster'].value_counts())
