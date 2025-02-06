#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

#menghilangkan kolom 'kode_kontrak' dari data frame dikarenakan kolom ini tidak relevan untuk dijadikan input dalam tugas klasifikasi (kode_kontrak tidak mempengaruhi apakah customer akan lanjut berlangganan atau tidak)
df.drop('kode_kontrak', axis=1, inplace=True)

#memeriksa 5 data teratas
print(df.head())