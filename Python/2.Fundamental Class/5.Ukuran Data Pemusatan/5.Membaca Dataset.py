# import library pandas
import pandas as pd

#load dataset ke dataframe anscombe
anscombe = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/anscombe.csv")

# menampilkan seluruh baris data yang ada
print("Anscombe's Quartet")
print(anscombe)

# menampilkan mean dataset anscombe
print("\nMean dari Anscombe's Quartet")
print(anscombe.mean())