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

#metode RandomForestClassifier dapat diakses pada library
#scikit-learn, tepatnya pada modul ensemble.
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
 
#menginisialisasi model dengan default parameter
model = RandomForestClassifier(random_state=57)
 
#melatih model dengan menggunakan data training
model.fit(X_train,y_train)
 
#meminta model yang telah dilatih melakukan prediksi
#terhadap data latih dan menghitung akurasi prediksi
y_pred = model.predict(X_train)
score = accuracy_score(y_train,y_pred)
 
print("Akurasi untuk data training: ", score)

#meminta model yang telah dilatih melakukan prediksi
#terhadap data testing dan menghitung akurasi prediksi
y_pred = model.predict(X_test)
score = accuracy_score(y_test,y_pred)
 
print("Akurasi untuk data testing: ", score)

# Penjelasan
# Aku melihat pada output untuk potongan kode di atas, metode Random Forest dengan default parameter tidak menghasilkan akurasi data testing yang lebih baik jika dibandingkan dengan metode Decision Tree dengan parameter max_depth senilai delapan (8) dan min_samples_split senilai 32.

