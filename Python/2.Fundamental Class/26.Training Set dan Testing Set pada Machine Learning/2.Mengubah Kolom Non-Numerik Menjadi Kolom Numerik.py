#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')

#menghilangkan kolom id dari data frame dikarenakan kolom id tidak relevan untuk dijadikan input ataupun output dalam tugas klasifikasi
df.drop('ID_Customer', axis=1, inplace=True)

#mengubah nilai "Perempuan" menjadi 1 dan "Laki-laki" menjadi 0
df['Jenis_kelamin']= df['Jenis_kelamin'].map(
	lambda value: 1  if value == 'Perempuan' else 0)
 
#mengubah nilai using_reward "Yes" menjadi 1 dan "No" menjadi 0
df['using_reward']= df['using_reward'].map(
	lambda value: 1 if value == 'Yes' else 0)

#mengubah nilai pembayaran "Credit" menjadi 2, "Bank Transfer" menjadi 1 dan "Cash" menjadi 0
df['pembayaran']= df['pembayaran'].map(
    lambda value: 2 if value == 'Credit'
    else 1 if value == 'Bank Transfer'
    else 0)

#mengubah nilai subskripsi brosur "No" menjadi 0 dan nilai lainnya ("Email" dan "Yes") menjadi 1
df['Subscribe_brochure']= df['Subscribe_brochure'].map(
    lambda value: 0 if value == 'No'  else 1)

#mengubah nilai "Yes" menjadi 1 dan "No" menjadi 0
df['churn'] = df['churn'].map(
	lambda value: 1 if value == 'Yes' else 0)

#menampilkan isi dari variabel 'df' setelah perubahan
print(df.head())

