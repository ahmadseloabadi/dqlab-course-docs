#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)
df_credit_scoring['rata_rata_overdue'].replace({
   '0 - 30 days':1, 
   '31 - 45 days':2, 
   '46 - 60 days':3, 
   '61 - 90 days':4, 
   '> 90 days':5
}, inplace=True)

X = df_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values

y = df_credit_scoring['risk_rating'].values

#membagi data training dan data testing, di mana training 70% dan testing 30%
from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)

#menampilkan jumlah data train dan test
print('Shape of X_train:', X_train.shape)
print('Shape of X_test :', X_test.shape)
print('Shape of y_train:', y_train.shape)
print('Shape of y_test :', y_test.shape)

# TUgas
# Kemudian, aku membagi data X dan y menjadi data training dan data testing yang masing-masingnya sebesar 70% dan 30%.