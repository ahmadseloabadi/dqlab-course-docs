import pandas as pd
# Baca file sample_tsv.tsv dan set lah index_col sesuai instruksi
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/sample_tsv.tsv', sep='\t', index_col=["order_date" ,'order_id'])
# Cetak data frame untuk 8 data teratas
print("Dataframe:\n", df.head(8))

# Tugas

# Pada code editor dapat dilihat kode-kode yang tidak lengkap. Tugas sekarang adalah mengganti tanda _ _ _ di code editor dengan yang sesuai.  

# Baca kembali file TSV "sample_tsv.tsv" dan set lah kolom "order_date" dan "order_id" sebagai index_col-nya dan cetaklah dataframe untuk delapan baris pertama. 

# Notes : 

# Dataset : https://storage.googleapis.com/dqlab-dataset/sample_tsv.tsv