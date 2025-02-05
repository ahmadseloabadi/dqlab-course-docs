import pandas as pd
dataset=pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/online_raw.csv')
print('Shape dataset:', dataset.shape)
print('\nLima data teratas:\n', dataset.head())
print('\nInformasi dataset:')
print(dataset.info())
print('\nStatistik deskriptif:\n', dataset.describe())

# Tugas
# “Oke, Pertama- tama,  kita check dimensi data kita terlebih dahulu. Aksara, silahkan load datanya dan gunakan .shape, .head(), .info(), dan .describe() untuk mengeksplorasi dataset secara berurut. Dataset ini adalah data pembeli online yang mengunjungi website dari suatu e-commerce selama setahun, yaitu 'https://storage.googleapis.com/dqlab-dataset/pythonTutorial/online_raw.csv',” perintah Senja.

# penjelasan
# “Nah, dengan mengetahui dimensi data yaitu jumlah baris dan kolom, kita bisa mengetahui apakah data kita terlalu banyak atau justru sangat sedikit. Jika data terlalu banyak, waktu melatih model akan lebih lama, sedangkan jika data terlalu sedikit, performansi model yang kita hasilkan mungkin tidak cukup bagus, karena tidak mampu mengenali pola dengan baik. Sudah lebih paham sekarang?”

