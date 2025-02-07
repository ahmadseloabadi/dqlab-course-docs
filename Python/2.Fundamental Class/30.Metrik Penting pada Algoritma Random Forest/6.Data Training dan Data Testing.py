#Kode sebelumnya
import pandas as pd

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

X = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
y = dataset_credit_scoring['risk_rating'].values

#membagi data training dan data testing, dimana training 70% dan testing 30%
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)
 
#menampilkan jumlah data train dan test
print('Ukuran X_train:', X_train.shape)
print('Ukuran X_test :', X_test.shape)
print('Ukuran y_train:', y_train.shape)
print('Ukuran y_test :', y_test.shape)