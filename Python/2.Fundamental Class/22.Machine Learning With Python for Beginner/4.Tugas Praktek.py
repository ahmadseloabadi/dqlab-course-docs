import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/online_raw.csv')

# visualizing the distribution of customers around the Region
plt.hist(dataset['Region'], color = 'lightblue')
plt.title('Distribution of Customers', fontsize = 20)
plt.xlabel("Region Codes", fontsize = 14)
plt.ylabel("Count Users", fontsize = 14)
plt.show()

# Tugas
# Aku kemudian diminta Senja untuk membuat visualisasi berupa histogram yang menggambarkan jumlah customer untuk setiap Region.

# Dalam membuat visualisasi ini aku akan menggunakan dataset['Region'] untuk membuat histogram, dan berikan judul 'Distribution of Customers' pada title, 'Region Codes' sebagai label axis-x dan 'Count Users' sebagai label axis-y.