import pandas as pd
# File CSV
df_csv = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/sample_csv.csv')
print(df_csv.head(3)) # Menampilkan 3 data teratas
# File TSV
df_tsv = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/sample_tsv.tsv', sep='\t')
print(df_tsv.head(3)) # Menampilkan 3 data teratas