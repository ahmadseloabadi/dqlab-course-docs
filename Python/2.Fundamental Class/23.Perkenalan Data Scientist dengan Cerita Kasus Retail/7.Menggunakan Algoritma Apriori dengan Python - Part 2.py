#Kode sebelumnya
import pandas as pd
import numpy as np
pd.set_option('display.max_column', 10)
dataset_transaksi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv', sep='\t')
dataset_transaksi['Flag'] = 1

basket = dataset_transaksi.groupby(['Kode Transaksi','Nama Barang'])['Flag'].sum().unstack().reset_index().fillna(0).set_index('Kode Transaksi')

def encode_units(x):
    if x <= 0 :
        return 0
    if x > 0:
        return 1
	
basket_encode = basket.applymap(encode_units)

from mlxtend.frequent_patterns import apriori

frequent_itemset = apriori(basket_encode, min_support=0.03, use_colnames=True)

#Mengimport association_rules
from mlxtend.frequent_patterns import association_rules

#Menerapkan association_rules berdasarkan frequent_itemset
rules = association_rules(frequent_itemset, metric='lift', min_threshold=1).sort_values('lift', ascending=False).reset_index(drop=True)
print(rules)


# Teori
# Fungsi association_rules memiliki parameter berikut yaitu

# Parameter	Penjelasan
# metric	Digunakan sebagai pengukuran. Pada kasus ini, menggunakan lift , untuk menandakan hubungan erat pada item
# min_threshold	Batas minimum
# sort_values	Mengurutkan dataframe (ascending atau descending)
# ascending	Mengurutkan data dalam dataframe. Pada kasus ini set False karena diurutkan berdasarkan lift
# reset_index	Melakukan reset index pada data frame.
 

# Kemudian aku menggunakan kode berikut, untuk menerapkan association_rules dengan frequent_itemset yang telah didapatkan.