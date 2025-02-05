import pandas as pd  
from sklearn.cluster import KMeans  

dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/mall_customers.csv')   
X = dataset[['annual_income','spending_score']]  

cluster_model = KMeans(n_clusters = 5, random_state = 24)  
labels = cluster_model.fit_predict(X)

#import library
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt

#Elbow Method - Inertia plot
inertia = []
#looping the inertia calculation for each k
for k in range(1, 10):
    #Assign KMeans as cluster_model
    cluster_model = KMeans(n_clusters = k, random_state = 24)
    #Fit cluster_model to X
    cluster_model.fit(X)
    #Get the inertia value
    inertia_value = cluster_model.inertia_
    #Append the inertia_value to inertia list
    inertia.append(inertia_value)
    
##Inertia plot
plt.plot(range(1, 10), inertia)
plt.title('The Elbow Method - Inertia plot', fontsize = 20)
plt.xlabel('No. of Clusters')
plt.ylabel('inertia')
plt.show()

# Tugas Praktek
# “Kamu coba latihan saja. Aksara. Coba kamu membuat inertia plot untuk melihat apakah K = 5 merupakan jumlah cluster yang optimal. Saya kirim ya berkas latihannya.”

# Aku mengangguk pada Senja. Seperti yang tadi ia bilang, materi hari ini benar-benar intens! Email dari Senja sudah masuk dengan cepat:

# Untuk membuat inertia plot, silakan memanfaatkan fungsi looping (for):

# Pertama - tama, buatlah sebuah list kosong yang dinamakan 'inertia'. List ini akan kita gunakan untuk menyimpan nilai inertia dari setiap nilai K.
# Gunakan for untuk membuat looping dengan range 1-10. Sebagai index looping gunakan k
# Di dalam fungsi looping, deklarasikan  KMeans()  dengan nama cluster_model dan gunakan n_cluster = k, dan random_state = 24
# Gunakan fungsi .fit() dari cluster_model pada 'X'
# Dari dari cluster_model yang sudah di-fit ke dataset, dapatkan nilai inertia menggunakan inertia_ dan deklarasikan sebagai inertia_value
# Append inertia_value ke dalam list 'inertia'
# Setelah iterasi/looping selesai plotlah list 'inertia' tadi sebagai ordinat-nya dan absica-nya adalah range(1, 10).