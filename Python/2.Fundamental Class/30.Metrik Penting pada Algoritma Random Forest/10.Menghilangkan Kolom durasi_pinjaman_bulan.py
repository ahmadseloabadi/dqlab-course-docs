#Kode sebelumnya
import pandas as pd
from sklearn.model_selection import train_test_split

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

X = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
y = dataset_credit_scoring['risk_rating'].values

#Feature matrix X1
X1 = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue', 'durasi_pinjaman_bulan']).values

#membagi data training dan data testing, dimana training 70% dan testing 30%
X_train, X_test, y_train, y_test = train_test_split(X1, y, test_size=0.3, random_state=0)
 
#menampilkan jumlah data train dan test
print('Ukuran X_train:', X_train.shape)
print('Ukuran X_test :', X_test.shape)
print('Ukuran y_train:', y_train.shape)
print('Ukuran y_test :', y_test.shape)

# Tugas
# Karena feature durasi_peminjaman_bulan memiliki skor yang rendah, maka aku bisa mencoba untuk menghilangkan fitur tersebut pada pemodelan berikutnya. Ini berarti feature matrix X akan memiliki 3 kolom atau 3 feature untuk pemodelan. Feature matrix X dengan 3 feature ini dinyatakan ke dalam variabel X1. Kemudian, aku juga akan membagi dataset ke dalam bagian training dan testing dengan proporsi 70% : 30%.