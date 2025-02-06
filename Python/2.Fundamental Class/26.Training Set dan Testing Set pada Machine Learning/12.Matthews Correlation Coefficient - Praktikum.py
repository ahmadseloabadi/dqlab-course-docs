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
 
#library yang dapat kita gunakan untuk menghitung nilai Matthews Correlation Coefficient
from sklearn.metrics import matthews_corrcoef
 
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
	
	y_pred = model.predict(X_test)
	
	#menambahkan label ground_truth ke dalam variabel
	y_true_all.extend(y_test)
	#menambahkan label prediksi ke dalam variabel
	y_pred_all.extend(y_pred)
	
print('Nilai MCC: ', matthews_corrcoef(y_true_all, y_pred_all))

# Teori
# Rumus Matthews Correlation Coefficient (MCC):
# 
#            (TP * TN) - (FP * FN)
# MCC = ---------------------------------
#       sqrt((TP + FP) * (TP + FN) * (TN + FP) * (TN + FN))
# 
# Keterangan:
# TP = True Positive  (Prediksi positif yang benar)
# TN = True Negative  (Prediksi negatif yang benar)
# FP = False Positive (Prediksi positif yang salah)
# FN = False Negative (Prediksi negatif yang salah)
#
# Nilai MCC berkisar antara -1 hingga 1:
# - MCC = 1 : Prediksi sempurna.
# - MCC = 0 : Prediksi acak.
# - MCC = -1 : Prediksi berlawanan dengan nilai sebenarnya.

# Berdasarkan rumus di atas terlihat bahwa, tidak seperti ketiga metrik sebelumnya yang tidak mempertimbangkan nilai True Negative (TN), MCC mempertimbangkan nilai dari TN dalam perhitungannya. Kemudian, proses perhitungan MCC hanya dilakukan sebanyak satu kali, tidak seperti proses perhitungan Precision, Recall, dan F1-Score yang dilakukan sebanyak jumlah kelas yang ada.

# Di tengah-tengah pembelajarannya, Senja mengingatkanku tentang  metrik MCC.  

# “Jangan lupa Nyi, selain memiliki kelebihan metrik MCC juga punya sejumlah kekurangan. Makanya, perlu lebih teliti saat menggunakannya. Satu lagi, metrik MCC juga dapat bekerja lebih baik dibandingkan dengan ketiga metriknya jika memenuhi kedua syarat berikut,” ujarnya sambil menunjukkan dua syarat kepadaku.

# Cost dari False Positive dan False Negative dari setiap label seimbang, dan
# Setiap label yang ingin diprediksi sama pentingnya.
# Metrik MCC lebih tepat digunakan untuk kasus binary classification, meskipun dapat juga dihitung untuk kasus multiclass classification, nilai MCC pada kasus multiclass classification akan sulit untuk diinterpretasikan.
# Setelah mendengarkan penjelasan Senja, aku pun bertanya “Bagaimana cara menginterpretasikan nilai MCC, Nja?” 

# Senja bersandar di kursinya lalu menjawab, “Nilai MCC dapat diinterpretasikan, saat classifier dapat menebak laber dari seluruh data dengan tepat, yaitu saat False Positive dan False Negative sama dengan nol. Jadi, hasil pengukuran MCC akan sama dengan satu.”.

# “Sebaliknya, ketika seluruh data tidak diklasifikasikan dengan benar yaitu saat True Positive dan True Negative sama dengan nol, hasil pengukuran MCC akan sama dengan minus satu. Tunggu bentar ya Nyi, aku mau minum dulu,” ujar Senja sambil mengambil gelas air di meja.

# “Oke, noted, Nja.”


# “Jadi Nyi, nilai MCC sama dengan minus satu menunjukkan bahwa jawaban yang dikembalikan oleh classifier untuk mendapatkan hasil sempurna dapat disangkal,” sambung Senja lagi.

# Kalimat Senja menimbulkan pertanyaan di benakku. 

# “Lalu, bagaimana dengan nilai MCC yang sama dengan nol, Nja?” 

# “Nilai MCC sama dengan nol menunjukkan bahwa hasil klasifikasi yang dilakukan oleh sebuah model tidak lebih baik daripada proses cap cip cup atau tebak-tebakan sembarangan, Nyi. Supaya kamu lebih paham, coba kamu implementasikan metrik MCC pada potongan kode yang kamu miliki,” jelas Senja yang menjawab pertanyaanku dengan mantap.

# Penjelasan
# Setelah mengimplementasikan metrik MCC pada potongan kode di atas, aku menyadari bahwa potongan kode ini senada dengan nilai yang dihasilkan oleh metrik akurasi dan F1-Score. Jadi aku menyimpulkan, bahwa model Decision Tree yang aku kembangkan ternyata belum memiliki performa yang baik. 

# Agar tidak melakukan kesalahan yang sama, aku membuat catatan penting sebagai berikut.

# Catatan Penting: Dapat diketahui bahwa dalam potongan kode yang kukembangkan belum terdapat tahap preprocessing, tahap feature engineering yang mumpuni, proses hyperparameter dari model klasifikasi dan uji coba model klasifikasi lainnya. Andaikata tahap ini aku lakukan, kemungkinan besar aku mendapatkan model dengan performa yang lebih baik. Hal-hal yang disebutkan di atas belum dibahas dalam modul ini dikarenakan modul ini hanya berfokus pada konsep dan implementasi dari strategi validasi silang dan metrik pengukuran performa model klasifikasi.