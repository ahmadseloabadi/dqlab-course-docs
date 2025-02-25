#import library yang dibutuhkan
import pandas as pd
import requests
from bs4 import BeautifulSoup

#buatlah request ke website
website_url = requests.get('https://id.wikipedia.org/wiki/Demografi_Indonesia').text
soup = BeautifulSoup(website_url, 'lxml')

#ambil table dengan class 'wikitable sortable'
my_table = soup.find('table', {'class':'wikitable sortable'})

#cari data dengan tag 'td'
links = my_table.findAll('td')

#buatlah lists kosong 
nama = []
luas_km = []
populasi10 = []
populasi20 = []

#memasukkan data ke dalam list berdasarkan pola HTML
for i, link in enumerate(links):
	if i in range(0, len(links), 4):
		nama.append(link.get_text()[:-1])
	if i in range(1, len(links), 4):
		luas_km.append(link.get_text()[:-1])
	if i in range(2, len(links), 4):
		populasi10.append(link.get_text()[:-1])
	if i in range(3, len(links), 4):
		populasi20.append(link.get_text()[:-1])

#buatlah DataFrame dan masukkan ke CSV
df = pd.DataFrame()
df['Nama Provinsi'] = nama
df['Luas km'] = luas_km
df['Populasi 2010'] = populasi10
df['Populasi 2020'] = populasi20
df.to_csv('Indonesia_Demography_by_Province.csv', index=False, encoding='utf-8', quoting=1)
print(df)

# TEori

# Sebagai seorang Data Engineer, Anda diminta untuk menggali informasi dari https://id.wikipedia.org/wiki/Demografi_Indonesia menggunakan bahasa pemrograman Python. 

# Buatlah suatu script Python untuk menyimpan tabel "Jumlah Penduduk menurut Provinsi" dari web tersebut dengan format CSV.

# File CSV menggunakan format double-apostrophe quoting ('...') dan disimpan dengan nama 'Indonesia_Demography_by_Province.csv'.

# Kolom yang perlu Anda ambil adalah sebagai berikut.

# Nama provinsi 
# Luas (km2)
# Populasi (2010)
# Populasi (2020)
# Dataframe yang akan kamu buat diassign dengan nama variabel df.