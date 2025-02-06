#meng-import library pandas, library ini dapat kita gunakan untuk membaca data dalam format xlsx ataupun csv
import pandas as pd
pd.set_option('display.max_column', 20)

#men-load file data.csv sebagai pandas data frame untuk mempermudah proses pengolahan data
df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

#perintah untuk menampilkan 5 data pertama
print(df.head())