import pandas as pd

csv_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/shopping_data.csv")

print("Menampilkan data ke 5 sampai kurang dari 10 dalam satu baris:")

print(csv_data.iloc[5:10])