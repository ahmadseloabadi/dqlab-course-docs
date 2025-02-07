#Import library pandas
import pandas as pd

#Membaca data
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Menghapus kolom customer_id
RFM_km = data.drop(["customer_id"], axis=1)

#Import StandardScaler
from sklearn.preprocessing import StandardScaler
standard_scaler = StandardScaler()
RFM_standardized = standard_scaler.fit_transform(RFM_km)
RFM_standardized = pd.DataFrame(RFM_standardized)
RFM_standardized.columns = ["Frequency","Monetary","Recency"]

#Import KMeans untuk mengimplementasikan K-Means Clustering
from sklearn.cluster import KMeans

#Mengatur parameter k-means, jumlah cluster yang akan dibentuk adalah 3
k_means = KMeans(n_clusters=3, random_state=0)
k_means.fit(RFM_standardized)

#Pred menyimpan hasil prediksi label cluster untuk setiap data
pred = k_means.predict(RFM_standardized)

#Menggabungkan RFM dan hasil label clustering
RFM_labeled = pd.concat([RFM_standardized, pd.Series(pred).rename("cluster")], axis=1)
print(RFM_labeled.head())

#Menghitung jumlah data di setiap cluster
print(RFM_labeled["cluster"].value_counts())

# Penjelasan
# Dari hasil di atas, aku dapat melihat bahwa terdapat 1089 data yang tergabung dalam cluster 0, 514 data tergabung dalam cluster 2, dan 22 data tergabung dalam cluster 1.

