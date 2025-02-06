#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')

df.drop('ID_Customer', axis=1, inplace=True)

df['Jenis_kelamin']= df['Jenis_kelamin'].map(
   lambda value: 1 if value == 'Perempuan' else 0)
 
df['using_reward']= df['using_reward'].map(
   lambda value: 1 if value == 'Yes' else 0)

df['pembayaran']= df['pembayaran'].map(
    lambda value: 2 if value == 'Credit' 
    else 1 if value == 'Bank Transfer' 
    else 0)

df['Subscribe_brochure']= df['Subscribe_brochure'].map(
    lambda value: 0 if value == 'No'  else 1)

df['churn'] = df['churn'].map(
   lambda value: 1 if value == 'Yes' else 0)

#menyimpan atribut diagnosis ke dalam variabel y dan disimpan ke dalam array 1D atau array target
y = df.pop('churn').to_numpy()

#mengubah seluruh data dalam df ke dalam format array 2D atau matrix feature X (jumlah data, jumlah atribut)
X = df.to_numpy()

#memastikan jumlah data dan jumlah atribut data input
print('X:', X.shape)
#memastikan jumlah data pada variabel y
print('y:', y.shape)

# Tugas
# Langkah berikutnya aku akan membuat feature matrix atau data input yang merupakan variabel bebas (X) serta target yang meupakan variabel bergantung (y) untuk persoalan churn analysis ini. 