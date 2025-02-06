#Impor paket yang dibutuhkan
from sklearn import metrics
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd
 
#Unggah dataset yang disimpan dalam sebuah file CSV hasil_uji.csv
df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/hasil_uji.csv')
 
y_actual = df['actual']
y_predict = df['predicted']

#Penamaan label pada tiap kelas
#Pilih nilai pada label
labels = list(y_actual.unique())
#Urutkan risiko dari nilai terendah ke nilai tertinggi
labels.sort()
 
#Dapatkan confusion matrix
confusion_matrix = metrics.confusion_matrix(y_actual, y_predict)
 
#Ubah menjadi sebuah dataframe
matrix_df = pd.DataFrame(confusion_matrix)
 
#Plot hasilnya
fig, ax = plt.subplots(figsize=(7,5))
sns.set(font_scale=1.3)

#Plot heatmap dengan anotasi jumlah data dengan format 'd' (decimal integer) di tiap sel
sns.heatmap(matrix_df, annot=True, fmt="d", ax=ax, cmap="magma")
 
#Tentukan judul gambar dan label pada sumbu x dan y
ax.set_title('Confusion Matrix - Decision Tree')
ax.set_xlabel("Predicted Risk Level", fontsize =15)
ax.set_xticklabels(list(labels))
ax.set_ylabel("Actual Risk Level", fontsize=15)
ax.set_yticklabels(list(labels), rotation = 0)

plt.show()

