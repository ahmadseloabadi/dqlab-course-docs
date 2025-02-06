#Kode sebelumnya
import pandas as pd

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df.drop(['kode_kontrak'], axis=1, inplace=True)
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

df.loc[(df['kpr_aktif']=='YA'), 'kpr_aktif'] = True
df.loc[(df['kpr_aktif']=='TIDAK'), 'kpr_aktif'] = False
df['kpr_aktif'] = df['kpr_aktif'].astype('bool')

feature_cols = ['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan']

X = df[feature_cols]
y = df['risk_rating']

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4, random_state=42)

#Cek porsi tiap kelas pada data training dan data testing
print('Porsi tiap kelas pada data training:')
print(y_train.value_counts(normalize=True) * 100)
print('\nPorsi tiap kelas pada data testing:')
print(y_test.value_counts(normalize=True) * 100)

# Tugas
# Langkah selanjutnya, aku melakukan pengecekan perwakilan dataset untuk tiap kelas baik untuk dataset training maupun dataset testing,