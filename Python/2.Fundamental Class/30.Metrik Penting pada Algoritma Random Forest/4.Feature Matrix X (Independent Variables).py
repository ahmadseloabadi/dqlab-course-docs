#Kode sebelumnya
import pandas as pd

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

#untuk X (independent variables), data yang dimasukkan semua persyaratan untuk membuat risk_rating (variabel dependen), tidak memerlukan kode_kontrak, sehingga kolom kode_kontrak,  risk_rating, dan rata_rata_overdue dibuang
X=dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
print('Ukuran matrix feature X:',X.shape)

# Teori
# Dataset dataset_credit_scoring ini akan dinyatakan ke dalam variabel bebas (independent variable) X yang disusun dari kolom pendapatan_setahun_juta, kpr_aktif, durasi_pinjaman_bulan, dan jumlah_tanggungan. Sama seperti materi pada modul sebelumnya (Implementasi Decision Tree dengan Random Forest - Membuat Variabel Independen dan Dependen) rata_rata_overdue tidak kita libatkan di sini.

# Sementara, kolom risk_rating merupakan variabel bergantung (dependent variable) dari X yang nanti disebut dengan y.