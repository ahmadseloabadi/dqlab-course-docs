#Kode program sebelumnya
import numpy as np
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
df.drop('kode_kontrak', axis=1, inplace=True)

y = df.pop('risk_rating').to_list()
y = [4 if label == 5 else label for label in y]
y = np.array(y)

def convert_kpr_aktif(kpr_aktif):
    if kpr_aktif == 'YA':
        return 1
    return 0

df['kpr_aktif']= df['kpr_aktif'].apply(convert_kpr_aktif)

def change_overdue(overdue):
    if overdue == '0 - 30 days':
        return 0
    elif overdue == '31 - 45 days':
        return 1
    elif overdue == '46 - 60 days':
        return 2
    elif overdue == '61 - 90 days':
        return 3
    else:
        return 4

df['rata_rata_overdue'] = df['rata_rata_overdue'].apply(change_overdue)

X = df.to_numpy()
	
#library yang digunakan untuk menghitung akurasi
from sklearn.metrics import accuracy_score
 
#library yang digunakan untuk menggunakan model k-NN
from sklearn.neighbors import KNeighborsClassifier
 
#library yang akan kita gunakan untuk membagi dataset menggunakan strategi validasi KFold
from sklearn.model_selection import KFold
 
#menginisialisasi object KFold dengan jumlah kelompok data = 5. nilai random_state kita gunakan reproducibility (agar data acak yang kita dapatkan untuk setiap kelompok data selalu sama)
kf = KFold(n_splits = 5, shuffle=True, random_state = 57)
 
scores_test = []
scores_train = []
 
#meminta object kf untuk memecah data X ke sejumlah n kelompok dan mengiterasi setiap train_index dan test_index
for train_index, test_index in kf.split(X):
	X_train, y_train = X[train_index], y[train_index]
	X_test, y_test = X[test_index], y[test_index]
	
	model = KNeighborsClassifier()
	
	#menspesifikasikan data latih beserta labelnya untuk dipelajari oleh model
	model.fit(X_train, y_train)
	
	#meminta model yang telah dilatih untuk memprediksi data X_train
	#menampung hasil prediksi ke dalam variabel y_pred
	y_pred = model.predict(X_train)
	
	#menampung akurasi dari model ke variabel current_score
	current_score = accuracy_score(y_train, y_pred)
	
	#menambahkan skor saat ini ke list scores
	scores_train.append(current_score)
	
	#meminta model yang telah dilatih untuk memprediksi data X_test
	#menampung hasil prediksi ke dalam variabel y_pred
	y_pred = model.predict(X_test)
	
	#menampung akurasi dari model ke variabel current_score
	current_score = accuracy_score(y_test, y_pred)
	
	#menambahkan skor saat ini ke list scores
	scores_test.append(current_score)
	
print("Skor latih tertinggi: ", round(max(scores_train),2))
print("Skor latih terendah: ", round(min(scores_train),2))
print("Skor latih rata-rata: ", round(sum(scores_train)/ len(scores_train),2))

print("Skor testing tertinggi: ", round(max(scores_test),2))
print("Skor testing terendah: ", round(min(scores_test),2))
print("Skor testing rata-rata: ", round(sum(scores_test)/ len(scores_test),2))

# Teori
# Parameter

# Penjelasan

# n_neighbors : Mengatur sejumlah data “n_neighbors” terdekat yang akan digunakan untuk menentukan label dari sebuah data baru.

# metric :Mengatur fungsi jarak yang akan digunakan dalam mengukur jarak antar dua buah data. Pada parameter ini terdapat 3 macam fungsi yang sering digunakan yaitu “manhattan”, “euclidean”, dan “hamming”.
#         Fungsi “manhattan” dan “euclidean” seringkali digunakan untuk data numerik, sedangkan fungsi “hamming” hanya dapat berfungsi dengan baik pada data yang seluruh atributnya berupa atribut kategori yang telah dijadikan numerik.

# Kelebihan dan Kekurangan Algoritma k-Nearest Neighbors
# Kelebihan dari algoritma k-NN:

# Dikarenakan prinsip kerja dari algoritma k-NN yang sederhana, algoritma mudah untuk dipahami dan mudah untuk diimplementasikan (hanya parameter jumlah tetangga, n_neighbors, dan fungsi jarak yang harus di-adjust dalam proses parameterisasi model - fine-tuning model)
# Saat dimensi data yang ingin dipelajari tidak terlalu besar dan jumlah data relatif sedikit, algoritma kNN mampu mempelajari data dalam waktu yang cepat dan performa yang baik.
# Algoritma cenderung memiliki performa yang baik ketika data input memiliki tipe atribut yang homogen (seluruh tipe atribut sama, e.g. seluruhnya berupa fitur binary atau seluruhnya berupa atribut numerik).
# Kekurangan dari algoritma k-NN:

# Dikarenakan algoritma k-NN bekerja dengan menggunakan suatu fungsi jarak, algoritma ini pun turut terkena fenomena kutukan dimensi (curse of dimensionality). Hal ini mengartikan bahwa saat atribut input yang ingin dipelajari berjumlah besar dan jumlah data yang tersedia sedikit maka persebaran data menjadi sangat jarang yang mengakibatkan  algoritma k-NN menjadi tidak efektif (menghasilkan performa yang buruk).
# Algoritma cenderung memiliki performa yang buruk ketika data input memiliki tipe atribut yang bersifat heterogen (tipe atribut yang muncul beragam, e.g. tipe data berupa data kategori biner, kategori ordinal, kategori ordinal dan numerik)
# Algoritma tidak cocok digunakan untuk mempelajari data latih yang berukuran besar dikarenakan saat proses inferensi dilakukan algoritma bekerja berdasarkan proses pengukuran jarak pada setiap data dalam data latih, sehingga semakin besar ukuran data latih, akan semakin lama pula proses inferensi berlangsung (data yang ingin diprediksi harus dibandingkan dengan setiap data dalam data latih).

# Penjelasn
# “Setelah menguliknya cukup lama, aku justru mendapatkan hasil rata-rata akurasi yang lebih rendah. Aku pun bingung dan ingin menanyakan hal tersebut terhadap Aksara,” ucap Antara

# "Aku sudah kembali menghitung  tapi kenapa hasilnya selalu lebih rendah ya?" tanya Antara pada Aksara