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
 
#library yang dapat kita gunakan untuk menghitung nilai precision, recall dan F1-Score
from sklearn.model_selection import KFold
from sklearn.tree import DecisionTreeClassifier
 
#library yang dapat kita gunakan untuk menghitung nilai precision, recall dan F1-Score
from sklearn.metrics  import classification_report
 
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
	model.fit(X_train, y_train)
	
	y_pred = model.predict(X_test)
	
	#menambahkan label ground_truth ke dalam variabel
	y_true_all.extend(y_test)
	#menambahkan label prediksi ke dalam variabel
	y_pred_all.extend(y_pred)
	
print(classification_report(y_true_all, y_pred_all))

# penjelasan
# Berdasarkan output pada potongan kode di atas, saat label 0 dianggap sebagai kelas positif, nilai Precision sama dengan 0.48 dan nilai Recall sama dengan 0.53 sehingga nilai F1-Score untuk label sama dengan 0.50. Di sisi lain, saat label 1 dianggap sebagai kelas positif, nilai Precision sama dengan 0.53 dan nilai Recall sama dengan 0.48 sehingga nilai F1-Score sama dengan 0.50. Nilai support untuk baris dengan label 0 menyatakan jumlah data dengan label 0 pada list “y_true_all”, sedangkan nilai support untuk baris dengan label 0 menyatakan jumlah data dengan label 1 pada list “y_true_all”


# Kemudian, baris akurasi pada output menyatakan nilai akurasi (total prediksi benar dibagi dengan total data yang diprediksi); baris macro avg menyatakan nilai rata-rata Precision, Recall, dan F1-Score dari masing-masing kelas yang telah dihitung sebelumnya; dan baris weighted avg menyatakan nilai rata-rata Precision, Recall, dan F1-Score dari masing-masing kelas yang telah dihitung dengan mempertimbangkan jumlah nilai support.


# Catatan Penting: Mungkin beberapa dari teman-teman bertanya mengapa kita harus mempelajari metrik pengukuran performa lainnya (e.g. Precision, Recall, F1-Score). Mengapa tidak mengevaluasi model menggunakan metrik akurasi saja? Selain karena mungkin saja kita memiliki cost/ preferensi tertentu terkait dengan nilai False Positive dan False Negative dalam mengembangkan suatu model, pada kasus di mana rasio label dalam data tidak seimbang, akurasi sebagai metrik pengukuran performa bisa saja gagal.