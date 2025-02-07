import pandas as pd

def concat_df(train_data, test_data):
	return pd.concat([train_data, test_data], sort=True).reset_index(drop=True)

df_train = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/challenge/feature-engineering/titanic_train.csv')
df_test = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/challenge/feature-engineering/titanic_test.csv')
df_all = concat_df(df_train, df_test)
df_train.name = 'Training Set'
df_test.name = 'Test Set'
df_all.name = 'All Set' 
dfs = [df_train, df_test]

df_train_corr = df_train.corr().abs()
print(df_train_corr.to_string())

# Tugas
# Mengetahui Korelasi Fitur
# Untuk mencari korelasi antar kolom pada sebuah dataframe, Anda dapat menggunakan corr().abs() seperti contoh penggunaannya di bawah ini:

# df.corr().abs()
# Sekarang teman-teman diminta mencari korelasi pada df_train

# Penjelasan
# Membaca hasil korelasi fitur
# Apabila Anda melihat table ini Anda akan mengetahui korelasi antar kolom. Korelasi dapat ditentukan dengan mendekati nilai 1 untuk korelasi positive dan nilai -1 untuk korelasi terbalik.

# Pada data ini dapat dilihat bahwa target variable kita Survived sangat besar korelasinya dengan Pclass dan Fare. Sedangkan Age sangat berkaitan dengan Pclass, Sibling Spouse (SibSp), Parent Children (Parch).

# Dapat diasumsikan bahwa kebanyakan orang yang selamat adalah orang dengan PClass atas dan Tuanya umur seseorang dapat dikatakan dia akan membawa saudara/orang tua/anak/pasangan.

# Dan Fare (harga) tentu saja berkaitan dengan Pclass (kelas penumpang) seorang penumpang.