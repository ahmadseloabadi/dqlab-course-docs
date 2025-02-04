#Mengimport library Pandas
import pandas as pd
pd.set_option("display.max_column", 10)
#Membaca dataset
dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
#Membuat dataset
dataset = dataset_credit_scoring[['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan', 'rata_rata_overdue', 'risk_rating']]
#Mengubah data kpr_aktif menjadi tipe integer: 'YA' = 1 dan 'TIDAK' = 0
dataset['kpr_aktif'] = dataset['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0])
#Mengubah data rata_rata_overdue menjadi numerik
mapping_dict = {
	"rata_rata_overdue": {
		"46 - 60 days": 60,
		"0 - 30 days": 30,
		"31 - 45 days": 45,
		"61 - 90 days": 90,
		"> 90 days": 91
	}
}
dataset = dataset.replace(mapping_dict)

#Melihat korelasi data
import matplotlib.pyplot as plt
import seaborn as sns

#Membangun heatmap
#f = gambar
#ax = axis
f, ax = plt.subplots(figsize = (8,8))
plt.title('Correlation Matrix using Pearson Correlation')

#Menampilkan nilai korelasi tiap variabel kedalam bentuk heatmap
sns.heatmap(dataset.astype(float).corr(), linewidths=0.25, vmax=1.0, square=True, linecolor='black', annot=True, cmap=sns.cubehelix_palette())
plt.tight_layout()
plt.show()

# Teori
# “Belum, Kroma. Sekarang aku ingin mengetahui variabel apa saja yang paling berpengaruh pada tingkat risiko (risk_rating) menggunakan correlation matrix. Correlation matrix dapat membantu untuk melihat korelasi antar data dan menunjukkan nilai mana yang sangat berkorelasi dan mana yang tidak. Caranya seperti ini.”

# penjelasan
# Kroma mengamati data yang ada sambil menyipitkan mata, “Kalau tidak salah, nilai korelasi itu berkisar antara 0-1. Semakin mendekati angka 1 maka korelasi semakin kuat. Sebaliknya, semakin mendekati angka 0 maka korelasi semakin jauh. 

