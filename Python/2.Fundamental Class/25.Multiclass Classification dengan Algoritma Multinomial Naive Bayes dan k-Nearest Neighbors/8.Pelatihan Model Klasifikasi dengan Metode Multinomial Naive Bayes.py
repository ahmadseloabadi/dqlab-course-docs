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

#library yang akan kita gunakan untuk membagi dataset menggunakan strategi validasi KFold
from sklearn.model_selection import KFold
 
#menginisialisasi object KFold dengan jumlah kelompok data = 5 nilai random_state kita gunakan reproducibility (agar data acak yang kita dapatkan untuk setiap kelompok data selalu sama)
kf = KFold(n_splits = 5, shuffle=True, random_state = 57)

#library yang digunakan untuk menggunakan model MNB
from sklearn.naive_bayes import MultinomialNB
 
scores_test = []
scores_train = []
 
#meminta object kf untuk memecah data X ke sejumlah n kelompok dan mengiterasi setiap train_index dan test_index
for i, (train_index, test_index) in enumerate(kf.split(X)):
    X_train, y_train = X[train_index], y[train_index]
    X_test, y_test = X[test_index], y[test_index]
    model = MultinomialNB()
    #menspesifikasikan data latih beserta labelnya untuk dipelajari oleh model
    model.fit(X_train, y_train)
    print(f'Selesai melatih data dengan strategi validasi 5-Fold ke-{i+1}.')

	

# Teori
# Kelebihan dan Kekurangan Algoritma Multinomial Naive Bayes
# Kelebihan Algoritma Multinomial Naive Bayes

# Algoritma Multinomial Naive Bayes baik digunakan saat seluruh/ sebagian besar atribut input yang ingin dipelajari bersifat mutually independen (nilai dari setiap atribut tidak dipengaruhi oleh nilai atribut lainnya). Sebagai contoh: atribut jenis kelamin dan usia (jenis kelamin seseorang tidak mempengaruhi usia yang ia miliki)
# Algoritma Multinomial Naive Bayes tidak membutuhkan data training dalam jumlah yang besar dengan asumsi syarat pertama terpenuhi.
# Saat data masukan yang ingin dipelajari tersusun atas atau sebagian besarnya berupa data kategori algoritma Multinomial Naive Bayes dapat bekerja dengan sangat baik jika dibandingkan saat data yang ingin dipelajari berupa data numerik.
# Algoritma ini juga memiliki tingkat kompleksitas komputasi yang lebih rendah jika dibandingkan dengan algoritma pembelajaran mesin lainnya sehingga proses pelatihan dari algoritma cenderung cepat jika dibandingkan dengan algoritma lainnya yang lebih kompleks seperti metode ensemble (Random Forest, Gradient Boosting Classifier, dll) ataupun algoritma Multilayer Perceptron. Kemudian, algoritma ini juga tidak memiliki parameter yang harus di-adjust untuk menghasilkan performa yang baik sehingga proses pengembangan dan evaluasi model dapat berlangsung dengan lebih cepat.
# Kekurangan Algoritma Multinomial Naive Bayes

# Saat sebagian besar atau bahkan seluruh atribut input yang ingin dipelajari tidak bersifat mutually independent, nilai kemunculan setiap atribut sangat berpengaruh terhadap atribut lainnya maka algoritma akan memiliki performa yang sangat buruk. Sebagai contoh: total pendapatan dan persentase pajak penghasilan (semakin besar total pendapatan maka akan semakin besar pula persentase pajak penghasilan)
# Saat jumlah data yang ingin dipelajari berukuran sangat besar maka akan semakin besar pula kemungkinan suatu atribut yang ingin dipelajari bergantung pada atribut lainnya sehingga algoritma tidak dapat bekerja secara maksimal.
# Algoritma cenderung memiliki performa yang buruk untuk data numerik dibandingkan dengan data kategori.
# Algoritma cenderung memiliki performa yang tidak terlalu baik pada dataset dalam jumlah yang besar jika dibandingkan dengan algoritma yang lebih kompleks seperti metode ensemble (Random Forest, Gradient Boosting Classifier, dll) ataupun algoritma Multilayer Perceptron.