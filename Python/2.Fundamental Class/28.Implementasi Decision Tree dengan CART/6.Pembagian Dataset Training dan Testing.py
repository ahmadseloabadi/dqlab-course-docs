#Kode sebelumnya
import pandas as pd

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df.drop(['kode_kontrak'], axis=1, inplace=True)
df.drop(['rata_rata_overdue'], axis=1, inplace=True)

df.loc[(df['kpr_aktif']=='YA'), 'kpr_aktif'] = True
df.loc[(df['kpr_aktif']=='TIDAK'), 'kpr_aktif'] = False
df['kpr_aktif'] = df['kpr_aktif'].astype('bool')

#Membagi kolom menjadi variabel fitur dan variabel target
feature_cols = ['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan']
# Variabel fitur
X = df[feature_cols]
# feature_cols target
y = df['risk_rating']

#Bagi dataset menjadi training (60%) dan testing set (40%) dan seed untuk random number=42 (seed boleh bebas dipilih)
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4, random_state=42)

#Cek ukuran training set dan testing set
print('Ukuran training set:', X_train.shape)
print('Ukuran testing set :', X_test.shape)

# Tugas
# Setelah menyelesaikan seleksi kolom pada dataset, aku melakukan tahap selanjutnya yaitu menentukan input dan output dari model yang akan dibangun. Senja membagi kolom yang tersedia menjadi dua jenis variabel dependen (atau variabel target) dan variabel independen (atau variabel fitur). 

# Setelah melalui proses yang cukup panjang, akhirnya aku siap untuk membagi dataset yang telah diproses menjadi dua dataset, yaitu dataset training dan dataset testing. Aku juga ingin memastikan jumlah dataset untuk training dan testing yang diberikan 