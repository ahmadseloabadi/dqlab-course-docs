import pandas as pd
# Baca file sample_tsv.tsv untuk 10 baris pertama saja
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/sample_tsv.tsv', sep='\t', nrows=10)
# Cetak data frame awal
print("Dataframe awal:\n", df)
# Set index baru
df.index = ["Pesanan ke-" + str(i) for i in range(1, 11)]
# Cetak data frame dengan index baru
print("Dataframe dengan index baru:\n", df)

# Tugas
# Pada code editor dapat dilihat kode-kode yang tidak lengkap. Tugas sekarang adalah mengganti tanda _ _ _ di code editor dengan yang sesuai. 

# Baca kembali file TSV "sample_tsv.tsv" hanya untuk 10 baris pertama. Set index-nya dengan menggunakan nama "Pesanan ke-i" i adalah bilangan bulat dari 1 sampai dengan jumlah baris (10 baris data).

# Notes :

# Dataset : https://storage.googleapis.com/dqlab-dataset/sample_tsv.tsv