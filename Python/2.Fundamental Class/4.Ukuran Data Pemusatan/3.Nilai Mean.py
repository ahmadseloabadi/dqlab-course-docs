# import library pandas
import pandas as pd
# membaca file survei_tinggi_badan.txt
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt")
# melakukan rename terhadap kolom "tinggi badan (cm)" menjadi "tinggi"
df.rename({'tinggi badan (cm)' : 'tinggi'}, axis=1, inplace=True)

# Mengecek apakah ada data yang bernilai null
print("Mengecek apakah ada data yang bernilai null")
print(df.isnull().any().any())

# Mengecek jumlah data
print("\nMengecek jumlah data")
print(df.shape)

# Mendapatkan nilai mean menggunakan fungsi mean yang disediakan pandas
print("\nMean:", df['tinggi'].mean())
