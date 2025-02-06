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
 
#library yang dapat kita gunakan untuk menghitung nilai precision recall trade-off
from sklearn.metrics import precision_recall_curve
 
kf = KFold(n_splits=10, shuffle=True, random_state=12)
kf.get_n_splits(X)
 
#variabel untuk menyimpan label ground-truth atau label referensi dari setiap iterasi
y_true_all = []
 
#variabel untuk menyimpan label hasil prediksi dari setiap iterasi
y_pred_all = []
 
for train_index, test_index in kf.split(X):
	X_train, X_test = X[train_index], X[test_index]
	y_train, y_test = y[train_index], y[test_index]
	
	model = DecisionTreeClassifier(random_state=12)
	model.fit(X_train,y_train)
	
	y_pred = model.predict_proba(X_test)
	
	#menambahkan label ground_truth ke dalam variabel
	y_true_all.extend(y_test)
	#menambahkan label prediksi ke dalam variabel
	y_pred_all.extend(y_pred[:,1])
	
precisions, recalls, thresholds = precision_recall_curve(y_true_all, y_pred_all)
	
#mengiterasi setiap nilai threshold, precision dan recall yang dihasilkan oleh fungsi precision_recall_curve
for i in range(0,len(thresholds)):
	print('Saat nilai threshold: %.2f maka nilai Precision: %.2f dan Recall: %.2f' % (thresholds[i], precisions[i], recalls[i]))


# Teori
# Untuk menghadapi permasalahan klasifikasi biner, berdasarkan suatu data yang ingin diprediksi, fungsi predict_proba akan mengembalikan sebuah list dengan elemen pertama berisikan probabilitas data yang diberikan memiliki label nol dan elemen kedua berisikan probabilitas data yang diberikan memiliki label satu. Saat kedua elemen ditambahkan, hasil dari penambahan sama dengan satu atau 100%.


# Melalui pengetahuan ini, aku mulai menyadari bahwa dalam kasus klasifikasi biner, model akan menyatakan bahwa sebuah data memiliki label satu ketika nilai probabilitas dari label lebih dari atau sama dengan 0.5. Saat nilai probabilitas dari label satu kurang dari 0.5 maka, model akan mengembalikan label nol.

# Mengetahui hal itu, aku pun menyimpulkan bahwa nilai threshold dapat dimodifikasi untuk mengurangi nilai False Positive dengan cost menambah nilai False Negative atau sebaliknya mengurangi nilai False Negative dengan cost menambah nilai False Positive.

# Dengan menaikkan nilai threshold, e.g. nilai threshold untuk label satu diset menjadi 0.8 maka nilai False Positive dapat menjadi berkurang (penambahan Precision) dikarenakan model hanya mengembalikan label satu ketika nilai probability label satu lebih atau sama dengan 80%.

# Akan tetapi, melalui penambahan nilai threshold ini, akan terjadi kesalahan prediksi pada data-data yang sebelumnya diprediksi positif dengan nilai probabilitas di antara 50% s.d. 80% dan benar memiliki label positif (penambahan nilai False Negative, penurunan Recall).


# Di sisi lain, saat nilai threshold diturunkan, e.g. nilai threshold untuk label satu dapat diset menjadi 0.4 maka nilai False Negative dapat menjadi berkurang (penambahan Recall) dikarenakan model sekarang juga mengembalikan label satu untuk data dengan nilai probability label satu lebih besar dari atau sama dengan 40%. Akan tetapi, melalui pengurangan nilai threshold akan terjadi kesalahan prediksi pada data-data yang sebelumnya diprediksi negatif dengan nilai probabilitas di antara 40% s.d. 50% dan benar memiliki label negatif (penambahan nilai False Positive, penurunan Precision).