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
 
X_new = [
	[1, 36, 12, 0, 0, 1, 0, 0, 0, 1], # <= data pertama
	[0, 23, 24, 1, 1, 0, 0, 0, 1, 0]  # <= data kedua
]

#melakukan prediksi pada data dalam variabel X_new
y_new_pred=model.predict(X_new)
print(y_new_pred)

# # Teori
# Kemudian, berdasarkan model yang telah dilatih, untuk melakukan proses prediksi terhadap sekumpulan data baru, aku menggunakan fungsi predict() yang tersedia dalam model.

# # Penjelasan
# Tak lupa aku menambahkan catatan untuk Sunyi, “Output di atas menandakan bahwa tidak terdapat potensi berhenti berlangganan untuk data kedua dan terdapat potensi berlangganan pada data pertama.

