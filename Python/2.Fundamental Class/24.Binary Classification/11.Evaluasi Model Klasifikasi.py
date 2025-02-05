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

#meng-import fungsi untuk menghitung akurasi pada library scikit-learn
from sklearn.metrics import accuracy_score

#melakukan prediksi terhadap data latih dan menampung
#label hasil prediksi dalam variabel y_pred
y_pred = model.predict(X_train)
score = accuracy_score(y_train,y_pred)
print("Skor akurasi untuk data latih:", score)

#melakukan prediksi terhadap data testing dan menampung
#label hasil prediksi dalam variabel y_pred
y_pred = model.predict(X_test)
score = accuracy_score(y_test,y_pred)
print("Skor akurasi untuk data testing:", score)

