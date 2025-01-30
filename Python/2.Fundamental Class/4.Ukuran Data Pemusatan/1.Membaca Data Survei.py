# Import library pandas sebagai aliasnya pd
import pandas as pd

# Membaca file survei_tinggi_badan.txt
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt")

# Mencetak 5 data teratas
print(df.head(5))