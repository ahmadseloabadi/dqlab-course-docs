def concat_df(train_data,test_data):
	#Return a concatenated df of training and test set
	return pd.concat([train_data,test_data],sort=True).reset_index(drop=True)
import pandas as pd

# Membaca dataset Titanic dari URL
df_train = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/challenge/feature-engineering/titanic_train.csv')
df_test = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/challenge/feature-engineering/titanic_test.csv')

# Menggabungkan dataset train dan test
df_all = concat_df(df_train, df_test)

df_train.name = 'Training set'
df_test.name = 'Test set'
df_all.name = 'All set'

dfs = [df_train,df_test]

# Tugas
# Dataset ini adalah dataset Titanic asli yang didapatkan dari Kaggle. Berisi data dari semua orang yang ikut di dalam Kapal Titanic ratusan tahun yang lalu.

# Jadi, di dalam dataset ini kita mempunyai target variable/label yaitu Survived. Semua kolom/fitur lain akan digunakan untuk menentukkan apakah penumpang ini selamat/tidak dari kejadian Titanic.

# Data Train digunakan untuk melatih model machine learning kita. Data Test nantinya digunakan untuk menebak akurasi model kita di Kaggle.

# Pada penjelasan ini teman-teman akan dijelakan untuk melakukan membaca data dari file csv dan melakukan concat dataframe dengan membuat sebuah fungsi.

# 1. Buat Function concat_df digunakan untuk menggabungkan dua dataset/dataframe dari 2 csv menjadi satu dataframe

# 2. Untuk memasukkan csv ke dalam Pandas Dataframe, kita harus menggunakan pd.read_csv()
# Data train kita masukkan ke df_train dan Data test kita masukkan ke df_test. df_all adalah gabungan dari kedua dataframe.


# 3. Kita dapat menamai tiap dataframe dengan memberikan "name" untuk masing-masing dataframe dengan cara

# 4. dfs adalah list yang berisi kedua dataframe.

# Teori
# Penjelasan dari dataset
# PassengerId adalah id pada row, maka tidak ada pengaruh terhadap target yang dicari
# Survived adalah target yang akan diprediksi, nilai 0 = Not Survived dan nilai 1 = Survived
# Pclass (Passenger Class) adalah kategori level sosial ekonomi penumpang dengan nilai (1, 2 atau 3):
# 1 = Upper Class
# 2 = Middle Class
# 3 = Lower Class
# Name, Sex dan Age merupakan data self-explanatory
# SibSp adalah jumlah saudara dari penumpang
# Parch adalah jumlah Orang Tua dan anak dari penumpang
# Ticket adalah jumlah tiket penumpang
# Fare adalah tarif yang di kenakan kepada penumpang
# Cabin adalah nomor kabin penumpang
# Embarked adalah pelabuhan pemberangkatan ada 3 pelabuhan (C, Q atau S):
# C = Cherbourg
# Q = Queenstown
# S = Southampton