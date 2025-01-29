import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')
plt.clf()

# mengatur ukuran gambar/plot
plt.rcParams['figure.dpi'] = 100

plt.figure()
plt.matshow(raw_data.corr())
plt.title('Plot correlation matriks dengan .matshow', size=14)
plt.tight_layout()
plt.show()

plt.figure()
sns.heatmap(raw_data.corr(), annot=True)
plt.title('Plot correlation matriks dengan sns.heatmap', size=14)
plt.tight_layout()
plt.show()

# Teori
# Matriks korelasi ada visualisasi data yang dapat menampilkan korelasi dari beberapa variabel numerik sekaligus. Untuk membuat korelasi matriks, kita dapat menggunakan method .corr() dari pandas untuk mendapatkan nilai korelasi dari tiap pasang variabel lalu menggunakan pyplot.matshow() dari matplotlib

# Tips
# Untuk memperoleh visualisasi korelasi matriks yang lebih baik kita dapat menggunakan package seaborn dan method .heatmap() 
