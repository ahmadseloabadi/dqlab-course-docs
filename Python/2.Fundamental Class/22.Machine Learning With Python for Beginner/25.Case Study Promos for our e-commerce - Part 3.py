import pandas as pd
data = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/ecommerce_banner_promo.csv')

#import library
import matplotlib.pyplot as plt
import seaborn as sns

# Seting: matplotlib and seaborn
sns.set_style('whitegrid')  
plt.style.use('fivethirtyeight')

#4. Data eksplorasi dengan visualisasi
#4a. Visualisasi Jumlah user dibagi ke dalam rentang usia (Age) menggunakan histogram (hist()) plot
plt.figure(figsize=(10, 5))
plt.hist(data['Age'], bins = data.Age.nunique() )
plt.xlabel('Age')
plt.tight_layout()
plt.show()

#4b. Gunakan pairplot() dari seaborn (sns) modul untuk menggambarkan hubungan setiap feature.
plt.figure()
sns.pairplot(data)
plt.show()

# Case Study: Promos for our e-commerce - Part 3
# Di proyek ini, aku akan melanjutkan mengeksplorasi data dengan visualisasi dengan tahap - tahap yang perlu dilakukan adalah (langkah ke-4):

# Data eksplorasi dengan visualisasi:
# Jumlah user dibagi ke dalam rentang usia menggunakan histogram (hist()), gunakan bins = data.Age.nunique() sebagai argumen. nunique() adalah fungsi untuk menghitung jumlah data untuk setiap usia (Age).
# Gunakan pairplot() dari seaborn modul untuk menggambarkan hubungan setiap feature. 