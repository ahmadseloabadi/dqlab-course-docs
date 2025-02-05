import pandas as pd
data = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/ecommerce_banner_promo.csv')

#2. Data eksplorasi dengan dengan mengecek korelasi dari setiap feature menggunakan fungsi corr()
print("\n[2] Data eksplorasi dengan dengan mengecek korelasi dari setiap feature menggunakan fungsi corr()")
print(data.corr())

#3. Data eksplorasi dengan mengecek distribusi label menggunakan fungsi groupby() dan size()
print("\n[3] Data eksplorasi dengan mengecek distribusi label menggunakan fungsi groupby() dan size()")
print(data.groupby('Clicked on Ad').size())

# Case Study: Promos for our e-commerce - Part 2
# Sekarang mari melanjutkan dengan ekplorasi data untuk langkah ke-2 dan ke-3:

# Data eksplorasi dengan dengan mengecek korelasi dari setiap feature menggunakan fungsi corr()
# Data eksplorasi dengan mengecek distribusi label menggunakan fungsi groupby() dan size()