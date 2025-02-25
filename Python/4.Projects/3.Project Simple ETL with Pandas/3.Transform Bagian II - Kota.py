import pandas as pd
df_participant = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/dqthon-participants.csv')
df_participant['postal_code'] = df_participant['address'].str.extract(r'(\d+)$')

#Masukkan regex Anda didalam fungsi extract
df_participant['city '] = df_participant['address'].str.extract(r'(?<=\n)(\w.+)(?=,)') 

# Teori
# Selain kode pos, mereka juga membutuhkan kota dari peserta.
# Untuk menyediakan informasi tersebut, buatlah kolom baru bernama city yang didapat dari kolom address. Diasumsikan bahwa kota merupakan sekumpulan karakter yang terdapat setelah nomor jalan diikuti dengan \n (newline character) atau dalam bahasa lainnya yaitu enter.