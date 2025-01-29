import pandas as pd
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')

print (raw_data)
# melihat 10 data pada baris pertama
print (raw_data.head(10))

# melihat 5 data pada baris terakhir
print (raw_data.tail())