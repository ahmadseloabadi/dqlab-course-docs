#Kode sebelumnya
import pandas as pd
import numpy as np

dataset_transaksi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv', sep='\t')
dataset_transaksi['Flag'] = 1

basket = dataset_transaksi.groupby(['Kode Transaksi','Nama Barang'])['Flag'].sum().unstack().reset_index().fillna(0).set_index('Kode Transaksi')

def encode_units(x):
    if x <= 0 :
        return 0
    if x > 0:
        return 1
	
basket_encode = basket.applymap(encode_units)

#Mengimport algoritma apriori
from mlxtend.frequent_patterns import apriori

#Menerapkan algoritma apriori untuk mendapatkan frequent_itemset
frequent_itemset = apriori(basket_encode, min_support=0.03, use_colnames=True)
print(frequent_itemset)

