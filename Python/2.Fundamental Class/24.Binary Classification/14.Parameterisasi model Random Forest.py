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

from sklearn.ensemble  import RandomForestClassifier
from sklearn.metrics  import accuracy_score
 
#parameter untuk mengatur setiap Decision Tree yang akan dibentuk pada model Random Forest
min_samples_split_search = [8, 12, 16, 20,24]
max_depth_search = [4,5,6,7,8]
 
#parameter untuk mengatur jumlah model Decision Tree yang akan terbentuk pada model Random Forest
n_estimators_search = [10, 25, 50, 75, 100]
 
max_score = 0
best_model = None
for ms in min_samples_split_search:
	for md  in max_depth_search:
		for ne in n_estimators_search:
			model = RandomForestClassifier(n_estimators = ne, min_samples_split=ms, max_depth=md, random_state=57)
			model.fit(X_train, y_train)
			y_pred = model.predict(X_test)
			score = accuracy_score(y_test,y_pred)
			if max_score < score:
				best_model = model
				max_score = score

print("Skor testing terbaik: ",max_score)
print("Parameter model: max_depth=", 
      best_model.get_params()['max_depth'], 
      ", min_samples_split=",
      best_model.get_params()['min_samples_split'],
      ", n_estimators=",
      best_model.get_params()['n_estimators']
      )

# penjelasan
# Berdasarkan potongan kode di atas aku mengerti meskipun telah mencoba melakukan parameterisasi terhadap model Random Forest, parameterisasi model Decision Tree masih memiliki memiliki nilai akurasi yang lebih tinggi.

