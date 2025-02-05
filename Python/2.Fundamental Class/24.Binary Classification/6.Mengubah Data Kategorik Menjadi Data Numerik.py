#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')
df.drop('ID_Customer', axis=1, inplace=True)
df.drop('harga_per_bulan', axis=1, inplace=True)
df.drop('jumlah_harga_langganan', axis=1, inplace=True)

y = df.pop('churn').to_list()
y = [1 if label == 'Yes' else 0 for label in y]

#mengimport class LabelEncoder untuk mengubah atribut dengan dua kemungkinan nilai (binary)
from sklearn.preprocessing import LabelEncoder
 
#menyiapkan dictionary untuk menyimpan seluruh LabelEncoder untuk setiap atribut kategorikal yang bersifat biner
labelers = {}
 
#untuk setiap kolom dengan tipe data 'object' (kategorikal)
column_categorical_non_binary = []
for col in df.select_dtypes(include=['object']):
	#saat jumlah nilai unik dari suatu kolom sama dengan dua
	#atau dengan kata lain kolom bersifat biner
	if len(df[col].unique()) == 2:
		#buat objek LabelEncoder baru untuk kolom dan tampung dalam
		#dictionary labelers
		labelers[col] = LabelEncoder()
		#meminta objek LabelEncoder untuk mempelajari dan
		#mentransformasikan kolom
		df[col] = labelers[col].fit_transform(df[col])
	#untuk kolom bersifat non-biner
	else:
		#tambahkan nama kolom ke dalam array yang telah disiapkan
		column_categorical_non_binary.append(col)		
print(df.head())

df = pd.get_dummies(df,columns=column_categorical_non_binary)
print(df.head())

# Tugas
# Langkah selanjutnya adalah mengubah data kategorik ke dalam representasi numerik. Ini dilakukan karena mesin hanya menerima properti dalam bentuk bilangan.”

# Setelah ia berhasil sampai sejauh ini, langkah selanjutnya yang dilakukan Senja adalah mengubah data kategorik ke dalam representasi numerik. Hal ini ia lakukan karena mesin hanya menerima properti dalam bentuk bilangan. Untuk melakukan hal ini, terdapat dua langkah yang ia lakukan yaitu:

# Langkah pertama adalah mengubah data kategorik yang hanya memiliki dua value menjadi angka nol dan satu. Hal ini Sunyi lakukan dengan menggunakan bantuan objek LabelEncoder pada library scikit-learn.
# Langkah kedua adalah mengubah data kategorik yang memiliki lebih dari dua value menjadi beberapa kolom dengan teknik one hot encoding. Hal ini ia lakukan dengan menggunakan fungsi pandas.get_dummies. Tak lupa Sunyi menambahkan penjelasan terkait dengan hasil dari teknik one hot encoding setelah bagian implementasi potongan kode agar tidak membuat aku Senja kesulitan saat melanjutkan potongan kode miliknya.