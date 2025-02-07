#Kode sebelumnya
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

X = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
y = dataset_credit_scoring['risk_rating'].values

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)

rfc = RandomForestClassifier(criterion='entropy', random_state=42)
model = rfc.fit(X_train, y_train)

importance = model.feature_importances_
feature_names = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).columns

#Buat data frame agar lebih mudah dalam pengurutan
fi_df = pd.DataFrame({'Feature': feature_names, 'Score': importance}).sort_values('Score')

#import matplotlib dan plot fi_df
import matplotlib.pyplot as plt
barh = plt.barh(fi_df['Feature'], fi_df['Score'])
plt.bar_label(barh, fmt='%.5f', padding=5, c='red')
plt.title('Feature Importance')
plt.xlabel('Score')
plt.xlim([0, 0.5])
plt.grid(axis='x')
plt.tight_layout()
plt.show()

# TUgas
# Berdasarkan skor, rata_rata_overdue memiliki pengaruh paling kuat terhadap variabel target, sedangkan durasi_pinjaman_bulan memiliki pengaruh yang lemah karena skornya paling rendah.

# Aku kemudian mencoba menampilkannya dengan menggunakan visualisasi bar chart horizontal dengan mengurutkan visualisasinya dari feature dengan skor tertinggi hingga terkecil.