#import library
import pandas  as pd  
from sklearn.cluster import KMeans

#load dataset
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/mall_customers.csv')

#selecting features  
X = dataset[['annual_income','spending_score']]  

#Define KMeans as cluster_model  
cluster_model = KMeans(n_clusters = 5, random_state = 24)  
labels = cluster_model.fit_predict(X)

# Tugas Praktek
# “Untuk praktik  ini, kita akan menggunakan dataset ‘Mall Customer Segmentation’,” ujar Senja.

# Aku membaca detail latihan yang sudah ia catatkan untukku:

# Dataset ini merupakan data customer suatu mall dan berisi basic informasi customer berupa : CustomerID, age, gender, annual income, dan spending score.  Adapun tujuan dari clustering adalah untuk memahami customer - customer mana saja yang sering melakukan transaksi sehingga informasi ini dapat diberikan kepada marketing team untuk membuat strategi promosi yang sesuai dengan karakteristik customer.


# “Kita akan melakukan segmentasi customer, dengan memanfaatkan fungsi KMeans dari Scikit-Learn.cluster. Silakan berlatih dengan intruksi di catatan tadi ya, Aksara.”

# Aku membuka kembali catatan yang berisi intruksi Senja:

# Import pandas sebagai aliasnya dan KMeans dari sklearn.cluster.
# Load dataset 'https://storage.googleapis.com/dqlab-dataset/pythonTutorial/mall_customers.csv' dan beri nama dataset
# Diasumsikan EDA dan preprocessing sudah dilakukan, selanjutnya kita memilih feature yang akan digunakan untuk membuat model yaitu annual_income dan spending_score. Assign dataset dengan feature yang sudah dipilih ke dalam 'X'. Pada dasarnya terdapat teknik khusus yang dilakukan untuk menyeleksi feature - feature (Feature Selection) mana saja yang dapat digunakan untuk machine learning modelling, karena tidak semua feature itu berguna. Beberapa feature justru bisa menyebabkan performansi model menurun. Tetapi untuk problem ini, secara default kita akan menggunakan annual_income dan spending_score.
# Deklarasikan  KMeans( )  dengan nama cluster_model dan gunakan n_cluster = 5. n_cluster adalah argumen dari fungsi KMeans( ) yang merupakan jumlah cluster/centroid (K).  random_state = 24.
# Gunakan fungsi .fit_predict( ) dari cluster_model pada 'X'  untuk proses clustering.