#Import make_blobs agar dapat membuat sample data untuk clustering
from sklearn.datasets import make_blobs

#Features menyimpan numpy array 2 dimensi, true label berisikan label cluster dari setiap data
# make_blobs digunakan untuk membuat sample data secara acak
features, true_labels = make_blobs(n_samples=200, centers=3, cluster_std=2, random_state=24)

#Import StandardScaler untuk feature scaling
from sklearn.preprocessing import StandardScaler

#Transformasi fitur
standard_scaler = StandardScaler()
scaled_features = standard_scaler.fit_transform(features)

#Import KMeans untuk mengimplementasikan K-Means Clustering
from sklearn.cluster import KMeans
 
#Mengimplementasikan KMeans dengan membagi data ke dalam 3 cluster
kmeans = KMeans(n_clusters=3, random_state=24)
 
#Melakukan perhitungan cluster center, kemudian melakukan prediksi cluster untuk setiap data
result = kmeans.fit_predict(scaled_features)

#Import library seaborn dan matplotlib
import seaborn as sns
import matplotlib.pyplot as plt

#Menampilkan data dan label clusternya, warna green cluster 0, warna blue cluster 1, warna red cluster 2
sns.scatterplot(x=scaled_features[:,0], y=scaled_features[:,1], hue=result)
 
#Menampilkan posisi cluster center
sns.scatterplot(x=kmeans.cluster_centers_[:,0], y=kmeans.cluster_centers_[:,1], s=200, marker="*", color="blue")
plt.legend(loc="lower left")
plt.show()

# # Teori
# Kumpulan data biasanya berisi fitur numerik yang diukur dalam unit yang berbeda-beda, contohnya berat dalam kilogram (kg) dan umur (tahun). Sementara hal ini berdampak signifikan pada kinerja algoritma clustering K-Means yang merupakan algoritma berbasis jarak, sehingga setiap fitur harus ditransformasikan ke skala yang sama. Proses transformasi fitur numerik untuk menggunakan skala yang sama dikenal sebagai feature scaling.

# Salah satu cara feature scaling yang sering digunakan adalah dengan menggunakan StandardScaler. StandardScaler mengimplementasikan jenis penskalaan fitur yang disebut standardisasi. StandardScaler melakukan pergeseran nilai dari setiap fitur sehingga fitur tersebut memiliki rata-rata 0 dan standar deviasi 1.


# KMeans memiliki parameter-parameter berikut ini agar dapat digunakan untuk mengatur clustering yang dihasilkan.

# Parameter 	     Penjelasan
# n_clusters	    :Jumlah dari cluster yang akan dibentuk, jumlah centroid yang akan digenerasi. Default = 8.
# init	        :{"k-means++", "random"}
#                 "k-means++" : inisialisasi cluster center untuk k-means clustering dengan cara yang lebih  baik sehingga mempercepat data konvergen
#                 "random" : inisialisasi cluster center secara random
#                 Default = "k-means++"

# n_init	        :Berapa kali algoritma k-means akan diulang dengan posisi centroid yang berbeda-beda. Default = 10
# max_iter	    :Jumlah iterasi maksimal dalam satu kali algoritma k-means berjalan. Default = 300
# tol	            :Toleransi relatif terhadap norma Frobenius. Default = 1e-4
# verbose	        :Verbosity mode. Default = 0
# random_state	:Menentukan pembangkitan nilai acak saat inisialisasi centroid. Default = None
# copy_x	        :   Center data pada saat pre-computing distance.
#                 True = original data tidak dimodifikasi
#                 False = data dimodifikasi, kemudian dikembalikan ke semula, namun ada perbedaan kecil yaitu mengurangi dan menambahkan mean pada data
#                 Default = True

# n_jobs	        :Jumlah thread yang dibuat untuk komputasi. Default = None, yang berarti menggunakan seluruh processors
# algorithm	{“auto”, “full”, “elkan”} :yaitu jenis algoritma k-means yang digunakan. Default = “auto”

# # Penjelasan
# Dari gambar di atas dapat diketahui bagaimana data-data terbagi ke dalam tiga buah cluster dengan tanda bintang menunjukkan pusat atau center dari masing-masing cluster data.

