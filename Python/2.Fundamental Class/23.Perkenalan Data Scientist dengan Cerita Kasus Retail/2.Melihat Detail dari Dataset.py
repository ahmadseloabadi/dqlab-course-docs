#Kode sebelumnya
import pandas as pd
import numpy as np

dataset_transaksi = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv', sep='\t')

#Melihat detail tipe data
dataset_transaksi.info()

