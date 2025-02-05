#Kode program sebelumnya
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier

pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')
df.drop('ID_Customer', axis=1, inplace=True)
df.drop('harga_per_bulan', axis=1, inplace=True)
df.drop('jumlah_harga_langganan', axis=1, inplace=True)

y = df.pop('churn').to_list()
y = [1 if label == 'Yes' else 0 for label in y]

labelers = {}
column_categorical_non_binary = []
for col in df.select_dtypes(include=['object']):
    if len(df[col].unique()) == 2:
        labelers[col] = LabelEncoder()
        df[col] = labelers[col].fit_transform(df[col])
    else:
        column_categorical_non_binary.append(col)

df = pd.get_dummies(df, columns=column_categorical_non_binary)

X = df.to_numpy()

X_train, X_test, y_train, y_test = train_test_split(X,y, test_size=0.1, random_state=23)

model = DecisionTreeClassifier(random_state=57)
model.fit(X_train,y_train)

from sklearn.metrics import accuracy_score

#mendefinisikan nilai dari parameter 'min_samples_split' yang akan dicobakan
min_samples_split_search = [2,4,8,16,32,64]

#mendefinisikan nilai dari parameter 'max_depth' yang akan dicobakan
max_depth_search = [4,8,16,32,64,128]

#mendefinisikan variabel untuk menyimpan skor terbaik dari setiap model dengan parameter yang berbeda
max_score = 0

#mendefinisikan variabel untuk menyimpan model terbaik.
best_model = None

#mencoba membuat model DecisionTree berdasarkan nilai kombinasi
#dari parameter 'min_samples_split' dan 'max_depth'
for ms in min_samples_split_search:
	for md in max_depth_search:
		# menginisialisasi model berdasarkan salah satu kombinasi nilai yang ada
		model = DecisionTreeClassifier(min_samples_split=ms, max_depth=md, random_state=57)
		
		#melatih model yang telah diinisialisasi dengan data 
		#X_train dan label y_train
		model.fit(X_train, y_train)
		
		#melakukan prediksi terhadap data X_test
		y_pred = model.predict(X_test)
		
		#menghitung skor berdasarkan nilai aktual (y_test) dan (y_pred)
		score = accuracy_score(y_test, y_pred)
		
		#jika score yang dihasilkan oleh model lebih besar dari skor
		#terbesar yang dicatat (max_score), maka
		if max_score < score:
			#simpan model dalam variabel best_model
			best_model = model
			
			#update max_score menjadi score milik model
			max_score = score
			
print("Skor testing terbaik: ", max_score)
print("Parameter model: max_depth=", 
      best_model.get_params()['max_depth'], 
      ", min_samples_split=",
      best_model.get_params()['min_samples_split'])

# Penjelasan
# Mengetahui bahwa skor pada data testing lebih penting dibanding skor pada data training. Maka dari itu, ia menggunakan variabel “max_score” untuk menyimpan akurasi terbaik untuk data testing seperti yang dapat terlihat pada potongan kode di atas. 

# Melalui proses pencarian parameter terbaik untuk model Decision Tree,berhasil meningkatkan akurasi sampai dengan 18% (dari 40% sampai dengan 58%). Model Decision Tree terbaik dihasilkan saat nilai parameter max_depth sama dengan delapan (8) dan min_samples_split sama dengan 32.