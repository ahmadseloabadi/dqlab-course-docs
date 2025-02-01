import pandas as pd
# Baca file TSV sample_tsv.tsv
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/sample_tsv.tsv', sep='\t')
# Set multi index df
df_x = df.set_index([ 'order_date', 'city','customer_id'])
# Print nama dan level dari multi index
for name, level in zip(df_x.index.names, df_x.index.levels):
    print(name,':',level)
    
# Teori
# untuk membuat multi index (hierarchical indexing) dengan pandas diperlukan kolom-kolom mana saja yang perlu disusun agar index dari dataframe menjadi sebuah hirarki yang kemudian dapat dikenali.
# Selanjutnya akan membuat multi index dengan menggunakan kolom 'order_id', 'customer_id', 'product_id', dan 'order_date' dengan menggunakan method .set_index(). 

# Perlu diketahui bahwa kumpulan index dari multi index adalah list dari banyak tuples, tuples-nya merupakan kombinasi yang ada dari gabungan index-index tersebut. Dari multi index tersebut juga terdapat atribut levels yang menunjukkan urutan index, dalam case ini 'order_id' > 'customer_id' > 'product_id' > 'order_date'.

# Tugas
# Pada code editor dapat dilihat kode-kode yang tidak lengkap. Tugas sekarang adalah mengganti tanda _ _ _ di code editor dengan yang sesuai seperti yang diberikan pada contoh di atas. 

# Tampilkanlah multi index dari file TSV "sample_tsv.tsv" yang telah dibaca berupa nama dan level index-nya.

# Notes :

# Dataset : https://storage.googleapis.com/dqlab-dataset/sample_tsv.tsv

# Kolom yang menjadi index-nya yaitu 'order_date', 'city', dan 'customer_id'!
