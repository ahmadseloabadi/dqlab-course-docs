#Membaca data
import pandas as pd
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

#Import library matplotlib & seaborn
import matplotlib.pyplot as plt
import seaborn as sns
fig, ax = plt.subplots(1,3, figsize=(18,12))

#Menampilkan hasil clustering untuk setiap data dalam bentuk boxplot
sns.boxplot(x="cluster", y="Recency", data=RFM_labeled, ax=ax[0])
sns.boxplot(x="cluster", y="Frequency", data=RFM_labeled, ax=ax[1])
sns.boxplot(x="cluster", y="Monetary", data=RFM_labeled, ax=ax[2])
plt.show()

# Penjelasan
# Berdasaarkan hasil di atas, aku dapat menyimpulkan bahwa sebanyak 1089 konsumen berada pada cluster 0 merupakan konsumen yang melakukan transaksi akhir-akhir ini dan frekuensi kedatangannya lebih tinggi dibandingkan dengan konsumen pada cluster 2. Konsumen pada cluster 0 memiliki total transaksi lebih banyak daripada cluster 1.

# Untuk cluster 1, aku menyimpulkan terdapat 22 konsumen pada cluster ini (jumlah konsumen paling sedikit) yang sudah cukup lama tidak melakukan transaksi (recency tinggi), namun frekuensi kedatangannya paling tinggi dibandingkan cluster lainnya. Konsumen pada cluster 1 memiliki total transaksi paling kecil dibandingkan dengan cluster lainnya.

# Untuk cluster 2, terdapat 514 konsumen pada cluster ini. Konsumen melakukan transaksi akhir-akhir ini, namun frekuensi kedatangannya paling rendah jika dibandingkan dengan cluster lainnya (frequency rendah). Namun, konsumen pada cluster ini memiliki total transaksi yang jauh lebih banyak dibandingkan dengan cluster lainnya.

# Dari sini, Aksara dapat melihat bahwa ia perlu menjaga relasi dengan konsumen pada cluster 2, misalnya dengan memberikan promosi-promosi khusus. Aksara juga perlu memperhatikan konsumen pada cluster 0 (cluster dengan konsumen terbanyak) karena frekuensi kedatangannya cukup rendah dibandingkan cluster 1.

# Apa itu analisis Recency, Frequency, dan Monetary?

# Analisa Recency, Frequency, dan Monetary (RFM) merupakan analisis perilaku pelanggan yang biasa digunakan dalam Customer Relationship Management (CRM). Recency merupakan variabel untuk mengukur waktu terakhir konsumen melakukan transaksi, frequency merupakan variabel untuk mengukur seberapa sering konsumen melakukan transaksi, dan monetary merupakan variabel untuk mengukur jumlah transaksi dari setiap konsumen.