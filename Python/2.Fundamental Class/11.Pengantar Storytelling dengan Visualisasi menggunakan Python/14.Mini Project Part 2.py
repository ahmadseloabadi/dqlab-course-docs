#Kode sebelumnya
import pandas as pd

dataset_worldbank = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/atmajaya/worldbank.csv', delimiter=',', encoding='cp1252')

dataset_worldbank = dataset_worldbank.fillna(0)

#Import matplotlib
import matplotlib.pyplot as plt

#GDP negara Indonesia, Malaysia, Singapore, dan Thailand
dataset_indonesia = dataset_worldbank[dataset_worldbank['country']=='Indonesia']
dataset_malaysia = dataset_worldbank[dataset_worldbank['country']=='Malaysia']
dataset_singapore = dataset_worldbank[dataset_worldbank['country']=='Singapore']
dataset_thailand = dataset_worldbank[dataset_worldbank['country']=='Thailand']

fig = plt.figure(figsize=(12, 10))
ax1 = plt.subplot(211)
ax1.plot(dataset_indonesia['year'], dataset_indonesia['realgdppercapita'], label='Indonesia')
ax1.plot(dataset_malaysia['year'], dataset_malaysia['realgdppercapita'], label='Malaysia')
ax1.plot(dataset_singapore['year'], dataset_singapore['realgdppercapita'], label='Singapore')
ax1.plot(dataset_thailand['year'], dataset_thailand['realgdppercapita'], label='Thailand')
ax1.legend()
ax1.grid()
ax1.set_xlabel('Tahun')
ax1.set_ylabel('GDP per kapita')
ax1.set_title('GDP per Kapita untuk Empat Negara ASEAN', fontsize=14)

#20 negara dengan GDP per kapita tertinggi di tahun 2015
dataset_2015 = dataset_worldbank[dataset_worldbank['year']==2015].nlargest(20, 'realgdppercapita')
ax2 = plt.subplot(212)
ax2.bar(dataset_2015['country'], dataset_2015['realgdppercapita'])
ax2.grid(axis='y')
ax2.set_xlabel('Negara')
ax2.set_ylabel('GDP per kapita')
ax2.set_title('20 Negara dengan GDP per Kapita Tertinggi di 2015', fontsize=14)
plt.xticks(rotation=90)

plt.tight_layout()
plt.show()

# Tugas

# Aku ingin menampilkan GDP negara Indonesia, Malaysia, Singapura, dan Thailand dari tahun 1960 s/d 2015

# Langkah
# Kata Sunyi tadi, aku dapat menggunakan .plot(x, y, ...) untuk menampilkannya, dengan x merupakan data pada sumbu x yaitu tahun (kolom 'year') dan y data gdp masing-masing negara tersebut (kolom 'realgdppercapita') sebagai sumbu y grafiknya.
# Setelah GDP keempat negara ini aku dapatkan dari tahun 1960 s/d 2015, aku melanjutkan untuk memvisualisasikan 20 negara dengan GDP tertinggi di tahun 2015.Aku akan menggunakan grafik batang .bar(x, y, ...) untuk menampilkannya, dengan x merupakan data pada sumbu x yaitu tahun (kolom 'country') dan y data gdp masing-masing negara tersebut (kolom 'realgdppercapita') sebagai sumbu y grafiknya.