#Mengimport library Pandas
import pandas as pd
pd.set_option("display.max_column", 10)
#Membaca dataset
dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
#Membuat dataset
dataset = dataset_credit_scoring[['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan', 'rata_rata_overdue', 'risk_rating']]
#Mengubah data kpr_aktif menjadi tipe integer: 'YA' = 1 dan 'TIDAK' = 0
dataset['kpr_aktif'] = dataset['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0])
#Mengubah data rata_rata_overdue menjadi numerik
mapping_dict = {
	"rata_rata_overdue": {
		"46 - 60 days": 60,
		"0 - 30 days": 30,
		"31 - 45 days": 45,
		"61 - 90 days": 90,
		"> 90 days": 91
	}
}
dataset = dataset.replace(mapping_dict)
#Menghapus kolom pendapatan_setahun_juta dan durasi_pinjaman_bulan
dataset = dataset.drop(['pendapatan_setahun_juta','durasi_pinjaman_bulan'], axis=1)

#Import library Naive Bayes
from sklearn.naive_bayes import GaussianNB

#Input variabel x dengan drop kolom risk_rating, karena kolom risk_rating digunakan sebagai lavel (y) (dependen)
x = dataset.drop('risk_rating',1)

#Input variabel y dengan drop kolom label
y = dataset['risk_rating'].astype('category')

#Membagi data training dan data testing
from sklearn.model_selection import train_test_split

#splitting data train 80% test 20%
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=0)

#Menjalankan data training dengan naive bayes
model_nb = GaussianNB()
model_nb.fit(x_train,y_train)

#Menjalankan data testing
y_predict = model_nb.predict(x_test)
print(y_predict)

# Teori
# Setelah berhasil dengan tahap sebelumnya, kali ini aku ingin mencoba membandingkan beberapa algoritma machine learning. Algoritma pertama yang akan aku coba adalah algoritma naive bayes.

# Aku menjelaskan algoritma ini pada Kroma secara singkat. Naive bayes adalah teknik klasifikasi statistik berdasarkan Teorema Bayes, merupakan salah satu algoritma supervised learning yang paling sederhana. Pengklasifikasian Naive Bayes memiliki akurasi dan kecepatan tinggi pada kumpulan data besar.

# Untuk melakukannya, aku perlu melakukan import library untuk naive bayes.

# Kemudian, aku menentukan variabel x dan y. Variabel x merupakan variabel input sedangkan variabel y merupakan variabel target/label.

# Variabel x terdiri dari semua kolom kecuali kolom risk_rating. Jadi aku akan membuat objek baru yaitu variabel x yang berisi dataset input dengan membuang kolom risk_rating.

# Aku perlu membuat objek y yaitu variabel y yang berisi dataset target berupa kolom risk_rating.

# Setelah menentukan variabel x dan y, aku membagi data menjadi data training dan data testing. Aku menggunakan bantuan modul train_test_split dari Sklearn.



# Mula - mula, aku mencoba membagi data training dan testing dengan persentase 80:20.



 

# Kemudian, aku membuat objek baru bernama model_nb yang akan menerapkan model naive bayes pada data training.



# Setelah datanya dibagi, saatnya aku melakukan prediksi pada data testing.

