#Kode program sebelumnya
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split

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

from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
 
#mendefinisikan nilai dari parameter 'min_samples_split' yang akan dicobakan
min_samples_split_search = [6, 7, 8, 9, 10]
 
#mendefinisikan nilai dari parameter 'max_depth' yang akan dicobakan
max_depth_search = [24, 28, 32, 36]
 
max_score = 0
best_model = None

for ms in min_samples_split_search:
	for md in max_depth_search:
		model = DecisionTreeClassifier(min_samples_split=ms, max_depth=md, random_state=57)
		
		model.fit(X_train,y_train)
		
		#melakukan prediksi terhadap data X_test
		y_pred = model.predict(X_test)
		
		#menghitung skor berdasarkan nilai aktual (y_test) dan (y_pred) 
		score = accuracy_score(y_test,y_pred)
		
		#jika score yang dihasilkan oleh model lebih besar dari skor
		#terbesar yang dicatat (max_score), maka
		if max_score < score:
			best_model = model
			max_score = score
			
print("Skor testing terbaik: ",max_score)
print("Parameter model: max_depth=", 
      best_model.get_params()['max_depth'], 
      ", min_samples_split=",
      best_model.get_params()['min_samples_split'])

# Penjelasan
# “Untung kita terus melanjutkan penelitian. Sekarang model berhasil dapat skor testing terbaik yaitu sebesar 44%!” kataku.

# “Tapi itu masih rendah, gimana kalau kita coba mempelajari metode pengembangan dari metode Random Forest?” usul Sunyi.

# “Metode Decision Tree itu yang dikenal sebagai metode weak classifier itu, Sunyi? Tapi dengan weak classifier berarti metode ini rentan terhadap kondisi overfitting dan tidak terlalu baik untuk dataset yang berukuran besar,” aku mencoba mengingat.

# “Betul, untuk mengatasi permasalahan ini, para peneliti telah mengembangkan metode Random Forest dengan memanfaatkan karakteristik dari metode Decision Tree. Sebagai pengembangan dari metode Decision Tree, metode Random Forest cenderung lebih baik untuk dataset yang berukuran besar dan tidak rentan terhadap kondisi overfitting pada dataset,”