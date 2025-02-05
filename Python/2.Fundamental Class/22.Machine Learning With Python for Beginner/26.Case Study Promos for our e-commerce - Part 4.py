import pandas as pd
data = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/ecommerce_banner_promo.csv')

#5. Cek missing value
print("\n[5] Cek missing value")
print(data.isnull().sum().sum())

# Case Study: Promos for our e-commerce - Part 4
# Di bagian proyek (langkah ke-5) ini aku akan mengecek apakah terdapat missing value dari data, jika terdapat missing value dapat dilakukan treatment seperti didrop atau diimputasi dan jika tidak maka dapat melanjutkan ke langkah berikutnya.

# Cek missing value