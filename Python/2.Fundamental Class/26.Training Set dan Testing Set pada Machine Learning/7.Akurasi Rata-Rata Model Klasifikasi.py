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

#mengimport fungsi KFold dari modul model_selection pada library scikit-learn
from sklearn.model_selection import KFold
 
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
 
#men-set nilai K = 10
kf = KFold(n_splits= 10, shuffle=True,random_state = 12)
 
#menyesuaikan nilai K dengan jumlah data pada variabel X
kf.get_n_splits(X)
 
total_score = 0
 
#mengulangi proses pelatihan dan evaluasi pada setiap kelompok data yang telah dibagi melalui object KFold
for train_index, test_index in kf.split(X):
	X_train, X_test = X[train_index], X[test_index]
	y_train, y_test = y[train_index], y[test_index]
	
	model = DecisionTreeClassifier(random_state=12)
	model.fit(X_train,y_train)
	
	y_pred = model.predict(X_test)
	score = accuracy_score(y_test,y_pred)
	
	total_score += score
	print('Hasil akurasi model: %.2f %%' % (100*score))
	
print('\nRata-rata akurasi model: %.2f %%' % (100*total_score/10))

# Teori
# Selama aku menuliskan potongan kode ini, aku menyadari suatu hal bahwa pada suatu konfigurasi pembagian data training dan testing, model prediksi dapat menghasilkan nilai performa yang bias terhadap konfigurasi tersebut. Contohnya, pada iterasi keempat model hanya memiliki nilai akurasi sebesar 34% dan pada iterasi kesembilan model dapat mencapai nilai akurasi sebesar 60%. Jadi, nilai performa yang bias ini membuat strategi validasi silang K-Fold seringkali dilakukan. 

# Selain itu, hasil rata-rata akurasi dari strategi validasi silang dapat lebih dipercaya dibandingkan dengan strategi validasi silang yang hanya melakukan satu kali pembagian. Oleh karena itu, untuk mendapatkan akurasi rata-rata dari model tersebut, aku memodifikasi potongan kode yang aku milik menjadi seperti berikut.

# PEnjelasan
# Keren banget ih, aku baru sadar kalau menggunakan K-Fold Cross bisa membuat aku lebih yakin dengan nilai performa yang dihasilkan model. Makasih loh Nja, sudah memberitahuku tentang K-Fold,” ujarku sambil mengacungkan jempol. Rasanya, kehadiran Senja menjadi penyelamat untuk situasiku saat ini.

# “Hehe, sama-sama Nyi.”

# “Oh iya Nja, hampir aja aku lupa. Aku pengen nanya nih, kira-kira berapa nilai K (n_splits) yang baik untuk digunakan?” tanyaku kepada Senja.

# “Kalau menurut penjelasan di modul, semakin besar nilai K yang kita gunakan maka nilai bias dalam dataset yang digunakan terhadap suatu konfigurasi potongan dataset akan semakin rendah. Akan tetapi, semakin besar nilai K yang digunakan, akan semakin banyak pula proses pelatihan pelatihan model. Biar lebih jelas, coba nih kamu baca contohnya di modul,” jelas Senja kepadaku. 

# Aku membaca dan menyimak contoh yang terdapat di modul.

# Misalkan, terdapat 1000 data yang dimiliki dan ingin mengembankan model dengan mengginakan strategi validasi silang K-Fold. Untuk nilai K sama dengan 2, lalu proses pelatihan akan dilakukan sebanyak 2 kali dengan menggunakan 500 data pada tiap proses. Di sisi lain, saat nilai K sama dengan 100, proses pelatihan akan dilakukan sebanyak 100 kali dengan menggunakan 990 data setiap kali proses dilakukan.

# Berdasarkan dua pemilihan nilai K di atas, saat nilai K sama dengan dua, rata-rata performa (e.g. akurasi) dari model  tentunya cenderung memiliki nilai bias yang tinggi akan tetapi proses pelatihan model cenderung cepat. Di sisi lain, untuk nilai K sama dengan 100, rata-rata performa dari model tentunya cenderung memiliki nilai bias yang lebih rendah tapi proses pelatihan model cenderung lebih lama dan membutuhkan banyak resource. 

# Terkait dengan nilai K pada strategi validasi silang K-Fold, tidak terdapat formal rule yang mengatur nilai K mana yang paling baik untuk digunakan. Pemilihan nilai K seringkali didasarkan pada jumlah waktu pengembangan dan jumlah data yang dimiliki.

# Catatan Tambahan
# Perhatikan bahwa strategi K-Fold tidak menjamin rasio kemunculan tiap label dalam data hasil akan sesuai dengan rasio data sebelum proses pembagian dilakukan. Jika ingin menjamin rasio data sebelum dan sesudah sama, maka dapat menggunakan variasi dari strategi K-Fold yaitu Stratified K-Fold. Strategi Stratified K-Fold dapat dilakukan, dengan melakukan proses import objek StratifiedKFold dari modul sklearn.model_selection.

# Kemudian, pada strategi K-Fold, saat nilai K sama dengan jumlah data dalam dataset, secara spesifik strategi ini dinamakan strategi Leave One Out (LOO). Untuk melakukan strategi ini, dapat dilakukan dengan mengimport objek LeaveOneOut dari modul sklearn.model_selection. Strategi LOO biasanya digunakan saat dataset yang dimiliki berjumlah sangat sedikit dan proses sampling sulit untuk dilakukan. Sebagai contoh, ketika ingin membuat model untuk memprediksi kondisi jantung yang sangat langkah, broken heart syndrome (takotsubo cardiomyopathy) berdasarkan data rekam jantung dari smart watch device. Dikarenakan kondisi penyakit ini sangat langka (jarang terjadi) dan hanya bisa terjadi saat kondisi tertentu, maka sampel data tentunya akan sulit untuk didapatkan. Untuk kasus seperti ini, teknik validasi LOO merupakan teknik yang paling tepat untuk digunakan.