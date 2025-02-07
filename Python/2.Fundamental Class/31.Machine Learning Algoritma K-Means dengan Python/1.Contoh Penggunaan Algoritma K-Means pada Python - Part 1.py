#Import make blobs agar dapat membuat sample data untuk clustering
from sklearn.datasets import make_blobs

#Features menyimpan numpy array 2 dimensi, true tabel berisikan label cluster dari setiap data
#Make_blobs digunakan untuk membuat sample data secara acak
features, true_labels = make_blobs(n_samples=200, centers=3, cluster_std=2, random_state=24)

#Untuk melihat sampel data ini (features dan label sebenarnya) dapat divisualisasikan ke dalam scatter plot 

#Import library seaborn dan matplotlib
import seaborn as sns
import matplotlib.pyplot as plt

#Plotkan features yang telah dibuat dengan make_blobs dan bedakan warna dari 3 kelompok cluster data asal
sns.scatterplot(x=features[:,0], y=features[:,1], hue=true_labels)
plt.legend(loc="lower left")
plt.show()

# TUgas
# Pertama-tama buatlah contoh atau sample data dan label secara acak dalam bentuk array 2D menggunakan method make_blobs.
# Agar kita dapat melihat seperti apa data yang telah di-generate dengan menggunakan make_blobs maka dapat digunakan visualisasi scatterplot dari seaborn berdasarkan true_label-nya.
