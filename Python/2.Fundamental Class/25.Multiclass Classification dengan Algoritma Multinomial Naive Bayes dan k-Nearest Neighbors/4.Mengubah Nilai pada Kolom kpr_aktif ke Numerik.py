#Kode program sebelumnya
import numpy as np
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
df.drop('kode_kontrak', axis=1, inplace=True)

y = df.pop('risk_rating').to_list()
y = [4 if label == 5 else label for label in y]
y = np.array(y)

#menyiapkan fungsi untuk mengubah nilai kpr_aktif
def convert_kpr_aktif(kpr_aktif):
	if kpr_aktif == 'YA':
		return 1
	return 0
 
#mengubah setiap nilai pada kolom kpr aktif menggunakan fungsi 'convert_kpr_aktif'
df['kpr_aktif']= df['kpr_aktif'].apply(convert_kpr_aktif)
print(df.head())
