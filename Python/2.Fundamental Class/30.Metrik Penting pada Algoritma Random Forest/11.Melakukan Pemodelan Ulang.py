#Kode sebelumnya
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

X = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
y = dataset_credit_scoring['risk_rating'].values

X1 = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue', 'durasi_pinjaman_bulan']).values

X_train, X_test, y_train, y_test = train_test_split(X1, y, test_size=0.3, random_state=0)

#Melakukan pemodelan ulang dengan Random Forest
rfc = RandomForestClassifier(criterion='entropy', random_state=42)
model = rfc.fit(X_train, y_train)

# Melihat hyperparameters yang tersedia
from pprint import pprint

print('Hyperparameters yang sedang digunakan:')
pprint(rfc.get_params())

# Tugas
# Sekarang, aku ingin mengulang pemodelan hanya dengan fitur atau variabel independen yang paling berpengaruh saja. Walau ini bukan kali pertama aku melakukannya, aku tetap mengerjakannya dengan hati-hati. Aku pun kembali mengecek Coba kita lihat hasil pemodelan dengan Random Forest sebelumnya untuk memastikan semua berjalan dengan baik.

