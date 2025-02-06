#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')

df.drop('ID_Customer', axis=1, inplace=True)

df['Jenis_kelamin']= df['Jenis_kelamin'].map(
   lambda value: 1 if value == 'Perempuan' else 0)
 
df['using_reward']= df['using_reward'].map(
   lambda value: 1 if value == 'Yes' else 0)

df['pembayaran']= df['pembayaran'].map(
    lambda value: 2 if value == 'Credit' 
    else 1 if value == 'Bank Transfer' 
    else 0)

df['Subscribe_brochure']= df['Subscribe_brochure'].map(
    lambda value: 0 if value == 'No'  else 1)

df['churn'] = df['churn'].map(
    lambda value: 1 if value == 'Yes' else 0)

y = df.pop('churn').to_numpy()
X = df.to_numpy()
 
from sklearn.model_selection import KFold
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import precision_recall_curve
 
kf = KFold(n_splits=10, shuffle=True, random_state=12)
kf.get_n_splits(X)
 
y_true_all = []
y_pred_all = []
for train_index, test_index in kf.split(X):
    X_train, X_test = X[train_index], X[test_index]
    y_train, y_test = y[train_index], y[test_index]

    model = DecisionTreeClassifier(random_state=12)
    model.fit(X_train,y_train)

    y_pred = model.predict_proba(X_test)

    y_true_all.extend(y_test)
    y_pred_all.extend(y_pred[:,1])
   
precisions, recalls, thresholds = precision_recall_curve(y_true_all, y_pred_all)

import matplotlib.pyplot as plt

plt.plot(recalls, precisions, marker='.', label='Decision Tree')

#axis labels
plt.xlabel('Recall')
plt.ylabel('Precision')
plt.title("Precision Recall Tradeoff untuk Kelas 1")

#show the legend
plt.legend()

#show the plot
plt.show()

# penejalasan
# Kesimpulan Precision & Recall Trade off
# Akhirnya, aku berhasil melengkapi konsep Precision dan Recall di model ini. Kerja bagus Sunyi, sekarang kamu berhak mendapatkan secangkir kopi, benakku dalam hati.

# Sambil menikmati kopi, aku memperhatikan output dari potongan kode di atas dan  menyadari bahwa aku dapat memiliki sistem dengan nilai presisi sebesar 100%. Namun, sistem ini hanya memiliki nilai Recall  sama dengan 0%.

# Di sisi lain, potongan kode di atas menunjukkan bahwa aku dapat memiliki sistem yang memiliki nilai presisi 100% dengan nilai presisi sekitar 53% saat nilai threshold sama dengan nol.

# Tetapi kalau diperhatikan dengan baik, nilai threshold sama dengan nol memiliki arti bahwa model hanya akan mengembalikan label satu untuk setiap data yang diterimanya. Oleh karena itu, aku membutuhkan langkah pemodelan sekaligus model yang berbeda untuk mengatasi kasus ini.

# Aku bisa menyimpulkan hal ini karena model yang aku miliki memiliki performa yang serupa dengan model tanpa pembelajaran. Soalnya, model tanpa pembelajaran hanya mengembalikan nilai satu untuk setiap data yang diterimanya.

# Yeay, udah paham banget nih berkat materi modul dan praktiknya dari Senja. Semoga dengan ini, enggak ada kesalahan lagi dalam pengerjaan tugas-tugasku ke depannya.


# Catatan Tambahan:

# Sejauh ini, dapat diketahui bahwa untuk mengevaluasi hasil pembelajaran dari sebuah model dapat dilakukan dengan menggunakan metrik pengukuran Precision, Recall, dan F1-Score. Selain ketiga metrik di atas terdapat pula metrik lainnya seperti.

# False Positive Rate atau Fall-out
# True Negative Rate atau Selectivity
# False Negative Rate atau Miss Rate
# False Discovery Rate
# False Omission Rate
# yang dapat digunakan untuk mengukur performa dari model yang dimiliki.

# Terdapat banyak sekali metrik yang dapat dikita gunakan untuk mengukur performa dari model yang dimiliki. Sebagai seorang data scientist, tentunya baik bagi kita untuk mengetahui lebih banyak mengenai metrik. Akan tetapi, untuk mengukur atau mengevaluasi hasil  pembelajaran dari model yang dimiliki tidak perlu menggunakan seluruh metrik yang ada. Hal terpenting diketahui, yaitu metrik mana yang paling tepat untuk permasalahan yang sedang dihadapi.