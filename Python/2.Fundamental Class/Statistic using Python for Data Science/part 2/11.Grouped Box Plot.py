import pandas as pd
import matplotlib.pyplot as plt
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')
plt.clf()

plt.figure()
# boxplot biasa tanpa pengelompokkan
raw_data.boxplot(rot=90)
plt.title('Boxplot tanpa pengelompokkan', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# box plot dengan pengelompokkan dilakukan oleh kolom 'Produk'
raw_data.boxplot(by='Produk')
plt.tight_layout()
plt.show()

# Tips
# Misalkan kita memiliki variabel yang digunakan untuk mengelompokkan nilai-nilai tertentu, misalnya variabel seperti gender, kelas, jenis pekerjaan dan variabel-variabel yang umumnya bertipe nominal. Maka kita dapat plot untuk masing-masing grup dengan bantuan grouped plot.
