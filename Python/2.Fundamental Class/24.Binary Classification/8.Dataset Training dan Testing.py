#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')
df.drop('ID_Customer', axis=1, inplace=True)
df.drop('harga_per_bulan', axis=1, inplace=True)
df.drop('jumlah_harga_langganan', axis=1, inplace=True)

y = df.pop('churn').to_list()
y = [1 if label == 'Yes' else 0 for label in y]

from sklearn.preprocessing import LabelEncoder
labelers = {}
column_categorical_non_binary = []
for col in df.select_dtypes(include=['object']):
    if len(df[col].unique()) == 2:
        labelers[col] = LabelEncoder()
        df[col] = labelers[col].fit_transform(df[col])
    else:
        column_categorical_non_binary.append(col)

df = pd.get_dummies(df, columns=column_categorical_non_binary)

X = df.to_numpy()

#library yang akan kita gunakan untuk membagi dataset
from sklearn.model_selection import train_test_split 
 
X_train, X_test, y_train, y_test = train_test_split(X,y, test_size=0.1, random_state=23)
 
print("Dimensi data X mula-mula:", X.shape)
print("Dimensi data y mula-mula:",len(y),"\n")
 
print("Dimensi data X train:", X_train.shape)
print("Dimensi data y train:", len(y_train),"\n")
 
print("Dimensi data X test:", X_test.shape)
print("Dimensi data y test:", len(y_test),"\n") 

# Teori
# Fungsi train_test_split menerima data X dan label y sebagai argumen dan diikuti dengan argumen test_size dan random_state.

# Argumen test_size menspesifikasikan jumlah data testing yang diinginkan saat nilainya di set menjadi 0.1 maka 10% dari data akan dijadikan data testing dan 90% sisanya akan dijadikan data training. Proses pembagian data ini akan dilakukan secara acak. Kemudian, selain dapat menspesifikasikan bilangan cacah (bilangan berkoma), bilangan bulat juga dapat dispesifikasikan sebagai test_size. Saat nilai test_size dispesifikasikan dengan bilangan bulat n maka akan dipilih sejumlah n data sebagai data test.
# Di sisi lain, argumen random_state dapat digunakan agar selalu mendapatkan permutasi pemilihan dataset training dan testing yang sama. Argumen in bersifat opsional, saat nilai random_state tidak dispesifikasikan maka setiap kali potongan kode dijalankan akan mendapatkan data testing dan training yang berbeda.

# # Penjelasan
# Aku melihat hasil keluaran pada potongan kode di atas, karena telah menset nilai argumen test_size menjadi 0.1 maka akan terdapat 449 (90% data training) dan 50 (10% data testing).

