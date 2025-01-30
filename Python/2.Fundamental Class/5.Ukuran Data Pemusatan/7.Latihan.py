# import library pandas
import pandas as pd

# membaca file survei_tinggi_badan.txt
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt")

# melakukan rename terhadap kolom "tinggi badan (cm)" menjadi "tinggi"
df.rename({'tinggi badan (cm)' : 'tinggi'}, axis=1, inplace=True)

# mendapatkan nilai mean menggunakan fungsi mean yang disediakan pandas
print(df["tinggi"].mean())

# mendapatkan nilai median menggunakan fungsi median yang disediakan pandas
print(df["tinggi"].median())

# mendapatkan nilai modus menggunakan fungsi mode yang disediakan pandas
print(df["tinggi"].mode())
