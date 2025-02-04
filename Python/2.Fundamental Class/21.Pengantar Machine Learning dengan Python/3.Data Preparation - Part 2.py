#Mengimport library Pandas
import pandas as pd
pd.set_option("display.max_column", 10)
#Membaca dataset
dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')
#Membuat dataset
dataset = dataset_credit_scoring[['pendapatan_setahun_juta', 'kpr_aktif', 'durasi_pinjaman_bulan', 'jumlah_tanggungan', 'rata_rata_overdue', 'risk_rating']]
#Mengubah data kpr_aktif menjadi tipe integer: 'YA' = 1 dan 'TIDAK' = 0
dataset['kpr_aktif'] = dataset['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0])

#Memeriksa nilai unik pada kolom rata_rata_overdue
print("Nilai unik pada kolom rata_rata_overdue")
print(dataset['rata_rata_overdue'].value_counts(), '\n')
	
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
print("\nNilai unik pada kolom rata_rata_overdue setelah dikonversi menjadi numerik")
print(dataset['rata_rata_overdue'].value_counts(), '\n')

#Menampilkan dataset dengan kolom yang sudah diubah
print(dataset.head())

