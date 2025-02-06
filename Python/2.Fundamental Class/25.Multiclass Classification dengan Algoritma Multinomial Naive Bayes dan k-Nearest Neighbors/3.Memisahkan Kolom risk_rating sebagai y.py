#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
df.drop('kode_kontrak', axis=1, inplace=True)

#memeriksa rasio kemunculan label
print('Rasio kemunculan  label:')
print(pd.concat([df['risk_rating'].value_counts(), 100*df['risk_rating'].value_counts(normalize=True).rename('percentage_risk_rating')], axis=1))

#menyimpan kolom 'rating' sebagai list ke dalam variabel y
y = df.pop('risk_rating').to_list()
 
#untuk setiap label jika nilai label = 5 maka kembalikan nilai 4
y = [4 if label == 5 else label for label in y]
 
#mengubah tipe data dari array y menjadi numpy array hal ini dikarenakan beberapa fungsi library scikit-learn hanya kompatibel terhadap numpy array
import numpy as np
y = np.array(y)

print('\nDataset:')
print(df.head())

# Tugas
# Setelah membuang kolom “kode_kontrak”, aku mengambil target pembelajaran dalam data (variabel df). Akan tetapi, sebelum melakukan proses ini, aku memeriksa terlebih dahulu bagaimana rasio kemunculan label.

# penjelasan 1
# print('Rasio kemunculan  label:')
# print(pd.concat([df['risk_rating'].value_counts(), 100*df['risk_rating'].value_counts(normalize=True).rename('percentage_risk_rating')], axis=1))

# Berdasarkan hasil potongan kode dikarenakan rasio kemunculan label “4” dan “5” cukup sedikit dibandingkan dengan rasio kemunculan label lainnya.

# Tugas 2
# Aku putuskan untuk menggabungkan kedua label ini dengan mengubah nilai label “5” menjadi “4”. Hal ini aku lakukan agar rasio antar kelas untuk risk rating ini menjadi hampir berimbang. Penggabungan ini akan menghasilkan jumlah kemunculan kelas risk rating "4" sebesar 223 butir data atau sekitar 24.77%.

# Untuk menunjukkan kondisi saat ini dari dataset (variabel df), setelah kolom “kode_kontrak” aku buang (drop) dan kolom “risk_rating” ditaruh ke dalam variabel yang berbeda (pop) aku menuliskan potongan kode berikut.



