import pandas as pd
# Baca file sample_csv.csv
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/sample_csv.csv')
# Slice langsung berdasarkan kolom
df_slice = df.loc[(df['customer_id'] == 18055 ) &
		          (df['product_id'].isin(['P0029', 'P0040', 'P0041', 'P0116', 'P0117']))
				 ]
print("Slice langsung berdasarkan kolom:\n", df_slice)

# Teori
# Seperti artinya slicing adalah cara untuk melakukan filter ke dataframe/series berdasarkan kriteria tertentu dari nilai kolomnya ataupun kriteria index-nya.

# Terdapat 2 cara paling terkenal untuk slicing dataframe, yaitu dengan menggunakan method .loc dan .iloc pada variabel bertipe pandas DataFrame/Series. Method .iloc ditujukan untuk proses slicing berdasarkan index berupa nilai integer tertentu. Akan tetapi akan lebih sering menggunakan dengan method .loc karena lebih fleksibel.

# Tugas
# Tugas praktek:

# Pada code editor dapat dilihat kode-kode yang tidak lengkap. Tugas sekarang adalah mengganti tanda _ _ _ di code editor dengan yang sesuai.  

# Baca kembali file TSV "sample_csv.csv" dan slice/filter-lah dataset jika customer_id adalah 18055 dan product_id-nya yaitu P0029, P0040, P0041, P0116, dan P0117. 

# Notes :

# Dataset: https://storage.googleapis.com/dqlab-dataset/sample_csv.csv