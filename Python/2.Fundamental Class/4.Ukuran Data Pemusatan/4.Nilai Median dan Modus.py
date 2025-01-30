# Import library pandas
import pandas as pd
# Membaca file survei_tinggi_badan.txt
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt")
# melakukan rename terhadap kolom "tinggi badan (cm)" menjadi "tinggi"
df.rename({'tinggi badan (cm)' : 'tinggi'}, axis=1, inplace=True)

# Mendapatkan nilai median menggunakan fungsi median yang disediakan pandas
print("Median data")
print('>> Median :',df['tinggi'].median())

# Mendapatkan nilai modus menggunakan fungsi mode yang disediakan pandas
print("\nModus data")
print('>> Modus :',df['tinggi'].mode())
