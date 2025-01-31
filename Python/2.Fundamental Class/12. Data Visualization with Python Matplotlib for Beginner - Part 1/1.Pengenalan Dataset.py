import pandas as pd
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced.csv')
print('Ukuran dataset: %d baris dan %dkolom\n' % dataset.shape)
print('Lima data teratas:')
print(dataset.head())